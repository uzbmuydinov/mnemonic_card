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
  final FlutterTts flutterTts = FlutterTts();

// for speak text

  void speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(0.5);
    await flutterTts.setSpeechRate(0.8);
    await flutterTts.speak(text);
  }

  List<Widget> kartalar = [
    // a dish
    MnemonicCardsWidget(
      backText: "VAY, NAQADAR UZUN WAY(YO'L)MAN, DEDI WAY (YO'L)",
      frontText: "Way - Yo'l",
      pathBackSideImage: DriveImageSource.wayImage,
      englishWord: 'Way',
      transcription: 'weɪ',
      association: 'Vay!',
    ),
    // galosh
    MnemonicCardsWidget(
      backText: "HAR YEAR (YIL) YER QUYOSH ATROFINI BIR MARTA AYLANIB CHIQADI",
      frontText: "Year - Yil",
      pathBackSideImage: DriveImageSource.yearImage,
      englishWord: 'Year',
      transcription: 'jɪə',
      association: 'Yil',
    ),

    // candy
    MnemonicCardsWidget(
      backText: "APPLE (OLMA) G'OLIB BO'LISHNI EPLADI!",
      frontText: "Apple - Olma",
      pathBackSideImage: DriveImageSource.appleImage,
      englishWord: 'Apple',
      transcription: 'æpl',
      association: 'Epla',
    ),

    MnemonicCardsWidget(
      backText: "ONA BALL(KOPTOK) BOLA BALL(KOPTOK)GA \"BO'LAQOL!\" DEDI",
      frontText: "Ball - koptok",
      pathBackSideImage: DriveImageSource.ballImage,
      englishWord: 'Ball',
      transcription: 'bɔːl',
      association: 'Bo\'l',
    ),
    // drill
    MnemonicCardsWidget(
      backText: 'MEN MAN(ERKAK) MAN", DEDI MANSUR.',
      frontText: 'Men - Erkak',
      pathBackSideImage: DriveImageSource.manImage,
      englishWord: 'Men',
      association: 'Man',
      transcription: 'men',
    ),

    MnemonicCardsWidget(
        backText: "BU MASHINANI QULOG`I KAR",
        frontText: "Car - Mashina",
        pathBackSideImage: DriveImageSource.carImage,
        englishWord: 'Car',
        transcription: 'kɑː',
        association: 'Qulog\'i kar'),
    MnemonicCardsWidget(
        pathBackSideImage: DriveImageSource.dayImage,
        backText: 'AYTING, OYI, NIMA DEY? \nINGLIZCHA "DAY" DE',
        frontText: "Day - kun",
        englishWord: 'Day',
        transcription: 'deɪ',
        association: 'De'),
    MnemonicCardsWidget(
      backText: "SALIMJONNI NARSASI (THING) YERGA TUSHIB SINDI",
      frontText: "Thing - narsa",
      pathBackSideImage: DriveImageSource.thingImage,
      englishWord: 'Thing',
      transcription: 'θɪŋ',
      association: 'Sinmoq',
    ),
    MnemonicCardsWidget(
      backText: 'WOMAN (AYOL) KO`ZGUGA QARAB, "VOY MAN!" DEDI',
      frontText: "Women -ayol",
      pathBackSideImage: DriveImageSource.womenImage,
      englishWord: 'Woman',
      transcription: "ˈwʊmən",
      association: 'Voy man!',
    )
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
