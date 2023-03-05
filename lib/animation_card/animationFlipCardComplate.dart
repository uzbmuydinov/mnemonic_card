import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:mnemonic_card/animation_card/buld_card.dart';
import 'package:mnemonic_card/view/app_colors.dart';

class AllCardsScreen extends StatefulWidget {
  const AllCardsScreen({Key? key}) : super(key: key);

  @override
  State<AllCardsScreen> createState() => _AllCardsScreenState();
}

class _AllCardsScreenState extends State<AllCardsScreen> {
  final CardSwiperController controller = CardSwiperController();

  List<Widget> kartalar = [
    // a dish
    MnemonicCardsWidget(
      frontText: "a Dish",
      pathBackSideImage: "assets/images/dish.jpg",
    ),
    // galosh
    MnemonicCardsWidget(
      frontText: "Galosh",
      pathBackSideImage: "assets/images/galosh.jpg",
    ),

    // candle
    MnemonicCardsWidget(
      frontText: "Candle",
      pathBackSideImage: "assets/images/candle.jpg",
    ),

    // candy
    MnemonicCardsWidget(
      frontText: "Candy",
      pathBackSideImage: "assets/images/cand.jpg",
    ),

    // Pistacchio

    MnemonicCardsWidget(
      frontText: "Pistacchio",
      pathBackSideImage: "assets/images/pista.jpg",
    ),
    // drill
    MnemonicCardsWidget(
      frontText: "Drill",
      pathBackSideImage: "assets/images/drill.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1,
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
