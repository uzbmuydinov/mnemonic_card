import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mnemonic_card/login_page/login_page.dart';


class SplashPageController extends GetxController {
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    initTimer();
  }

  void initTimer() {
    debugPrint("Ishga tushdi");
    Timer(const Duration(seconds: 3), () {
      debugPrint("Timer tugadi");
      Get.off(LoginPage());
    });
  }
  

}
