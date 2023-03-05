
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:mnemonic_card/animation_card/example_candidate_model.dart';
import 'package:mnemonic_card/animation_card/example_card.dart';
import 'package:mnemonic_card/view/app_colors.dart';



class Example extends StatefulWidget {
  const Example({
    Key? key,
  }) : super(key: key);

  @override
  State<Example> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<Example> {
  final CardSwiperController controller = CardSwiperController();
FlipCardController cardController=FlipCardController();
  // final cards = candidates.map((candidate) => ExampleCard(candidate)).toList();

  List<Widget> kartalar=[
    // a dish
    Center(
      child: FlipCard(
        side: CardSide.FRONT,
        alignment: Alignment.center,
        back: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/dish.jpg"),fit: BoxFit.cover),
            color: AppColors.orqaUchunRang,
            borderRadius: BorderRadius.circular(15),
          ),

        ),
        front: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(

            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.circular(15),
          ),
          child:
          Center(child: const Text("a Dish", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold))),
        ),
      ),
    ),
    // galosh
    Center(
      child: FlipCard(
        side: CardSide.FRONT,
        fill: Fill.none,


        alignment: Alignment.center,
        back: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/galosh.jpg"),fit: BoxFit.cover),
            color: AppColors.orqaUchunRang,
            borderRadius: BorderRadius.circular(15),
          ),

        ),
        front: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(

            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(15),
          ),
          child:
          Center(child: const Text("Galosh", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25))),
        ),
      ),
    ),

    // candle
    Center(
      child: FlipCard(
        side: CardSide.FRONT,
        alignment: Alignment.center,
        back: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/candle.jpg"),fit: BoxFit.cover),
            color: AppColors.orqaUchunRang,
            borderRadius: BorderRadius.circular(15),
          ),

        ),
        front: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(

            color: Colors.green,
            borderRadius: BorderRadius.circular(15),
          ),
          child:
          Center(child: const Text("Candle", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25))),
        ),
      ),
    ),

    // candy
    Center(
      child: FlipCard(
        side: CardSide.FRONT,
        alignment: Alignment.center,
        back: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/cand.jpg"),fit: BoxFit.cover),
            color: AppColors.orqaUchunRang,
            borderRadius: BorderRadius.circular(15),
          ),

        ),
        front: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(

            color: Colors.purple,
            borderRadius: BorderRadius.circular(15),
          ),
          child:
          Center(child: const Text("Candy", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25))),
        ),
      ),
    ),

    // Pistacchio
    Center(
      child: FlipCard(

        side: CardSide.FRONT,
        alignment: Alignment.center,
        back: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/pista.jpg"),fit: BoxFit.cover),
            color: AppColors.orqaUchunRang,
            borderRadius: BorderRadius.circular(15),
          ),

        ),
        front: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(

            color: Colors.orange,
            borderRadius: BorderRadius.circular(15),
          ),
          child:
          Center(child: const Text("Pistachio", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25))),
        ),
      ),
    ),

    // drill
    Center(
      child: FlipCard(

        flipOnTouch: true,
        side: CardSide.FRONT,
        direction: FlipDirection.HORIZONTAL,

        alignment: Alignment.center,
        back: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/drill.jpg"),fit: BoxFit.cover),
            color: AppColors.orqaUchunRang,
            borderRadius: BorderRadius.circular(15),
          ),

        ),
        front: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(

            color: Colors.teal,
            borderRadius: BorderRadius.circular(15),
          ),
          child:
          Center(child: const Text("Drill", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25))),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,
      body: SafeArea(


        child: SizedBox(
          height: MediaQuery.of(context).size.height*1,
          child: Column(
            children: [
              Flexible(

                child: CardSwiper(
                 scale: 0.7,
                  controller: controller,
                  cards: kartalar,
                  onSwipe: _swipe,
                  padding: const EdgeInsets.all(24.0),
                  direction: CardSwiperDirection.right,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  void _swipe(int index, CardSwiperDirection direction) {
    debugPrint('the card $index was swiped to the: ${direction.name}');
  }
}
