import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mnemonic_card/splash_page/splash_page_controller.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashPageController>(
        init: SplashPageController(),
        builder: (SplashPageController controller) => Center(
          child: Image.asset("assets/images/your_logo.png",width:180, height: 180,),
        ),
      ),
    );
  }
}
