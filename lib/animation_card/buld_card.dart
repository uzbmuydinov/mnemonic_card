import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class MnemonicCardsWidget extends StatelessWidget {
  final String frontText;

  String pathBackSideImage;

  MnemonicCardsWidget(
      {Key? key, required this.frontText, required this.pathBackSideImage})
      : super(key: key);

  List<Color> cardFrontColors = [
    Colors.blueAccent,
    Colors.deepOrangeAccent,
    Colors.purpleAccent,
    Colors.orangeAccent,
    Colors.teal
  ];

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      front: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.27,
          decoration: BoxDecoration(
              color: cardFrontColors[0],
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              frontText,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
      side: CardSide.FRONT,
      back: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.27,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(pathBackSideImage), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
