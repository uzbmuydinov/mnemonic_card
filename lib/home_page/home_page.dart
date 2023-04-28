import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mnemonic_card/animation_card/animationFlipCardComplate.dart';

import 'package:vertical_card_pager/vertical_card_pager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void jumpScreen(){
    Get.to(AllCardsScreen());
  }
  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "100 Essential nouns",
      "100 Essential verbs",
      "100 Essential adjectives",
    ];

    final List<Widget> images = [
      GestureDetector(
        onTap: jumpScreen,
        child: Container(
margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(20)
          ),
        ),
      ),
      GestureDetector(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20)
          ),
        ),
      ),
      GestureDetector(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(20)
          ),
        ),
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: VerticalCardPager(
                  textStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  titles: titles,
                  images: images,
                  onPageChanged: (page) {},
                  align: ALIGN.CENTER,
                  onSelectedItem: (index) {Get.to(AllCardsScreen());},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
