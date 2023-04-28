import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:mnemonic_card/animation_card/buld_card.dart';
import 'package:mnemonic_card/view/app_colors.dart';
import 'package:mnemonic_card/view/network_image_source.dart';

class AllCardsScreen extends StatefulWidget {
  const AllCardsScreen({Key? key}) : super(key: key);

  @override
  State<AllCardsScreen> createState() => _AllCardsScreenState();
}


class _AllCardsScreenState extends State<AllCardsScreen> {
  final CardSwiperController controller = CardSwiperController();
  final FlutterTts flutterTts=FlutterTts();

// for speak text

  void speak(String text) async{
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(0.5);
    await flutterTts.setSpeechRate(0.8);
    await flutterTts.speak(text);

  }


  List<Widget> kartalar = [
    // a dish
    MnemonicCardsWidget(
      frontText: "VAY, NAQADAR UZUN WAY(YO'L)MAN, DEDI WAY (YO'L)",
      pathBackSideImage: DriveImageSource.wayImage,
    ),
    // galosh
    MnemonicCardsWidget(
      frontText: "HAR YEAR (YIL) YER QUYOSH ATROFINI BIR MARTA AYLANIB CHIQADI",
      pathBackSideImage: DriveImageSource.yearImage,
    ),



    // candy
    MnemonicCardsWidget(
      frontText: "APPLE (OLMA) G'OLIB BO'LISHNI EPLADI!",
      pathBackSideImage: DriveImageSource.appleImage,
    ),

    // Pistacchio

    MnemonicCardsWidget(
      frontText: "ONA BALL(KOPTOK) BOLA BALL(KOPTOK)GA \"BO'LAQOL!\" DEDI",
      pathBackSideImage: DriveImageSource.ballImage,
    ),
    // drill
    MnemonicCardsWidget(
      frontText: '"MEN MAN(ERKAK) MAN", DEDI MANSUR.',
      pathBackSideImage: DriveImageSource.manImage,
    ),
    MnemonicCardsWidget(frontText: "Scholl", pathBackSideImage: DriveImageSource.schoolImage),
    MnemonicCardsWidget(frontText: "Car", pathBackSideImage: DriveImageSource.carImage),
    MnemonicCardsWidget(frontText: "Day", pathBackSideImage: DriveImageSource.dayImage),
    MnemonicCardsWidget(frontText: "Thing", pathBackSideImage: DriveImageSource.thingImage),
    MnemonicCardsWidget(frontText: "Women", pathBackSideImage: DriveImageSource.womenImage)
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
