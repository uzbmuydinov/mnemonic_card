import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:lottie/lottie.dart';
import 'package:mnemonic_card/view/app_colors.dart';

class MnemonicCardsWidget extends StatelessWidget {
  final String frontText;
  String pathBackSideImage;

  MnemonicCardsWidget(
      {Key? key, required this.frontText, required this.pathBackSideImage})
      : super(key: key);

  int color_id = Random().nextInt(AppColors.cardFrontColors.length);
  final FlutterTts flutterTts = FlutterTts();

// for speak text

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      // so'zlar shu yerda
      front: Center(
        child: Container(
          width: 500.h,
          height: 350.w,
          decoration: BoxDecoration(
              color: AppColors.cardFrontColors[color_id],
              borderRadius: BorderRadius.circular(10)),
          child:  Stack(
            children: [
              Positioned(
                left: 3,
                top: 5,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.volume_up),
                    color: Colors.white,
                    iconSize: 40,
                    splashColor: Colors.white,
                    hoverColor: Colors.orangeAccent),
              ),
              Center(
                child: Text(
                  frontText,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.3),
                ),
              ),
            ],
          ),
        ),
      ),

      // rasmlar shu yerda
      back: Center(
        child: SizedBox(
          width: 500.h,
          height: 350.w,
          child: CachedNetworkImage(
            imageUrl: pathBackSideImage,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            placeholder: (context, url) => Center(
              child: Container(
                width: 500.h,
                height: 280.w,
                child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Lottie.asset(
                        "assets/lottiefiles/download-from-cloud.json")),
              ),
            ),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
      side: CardSide.FRONT,
    );
  }
}
