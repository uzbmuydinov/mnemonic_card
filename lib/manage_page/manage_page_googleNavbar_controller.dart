import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mnemonic_card/home_page/home_page.dart';
import 'package:mnemonic_card/profile_page/user_profile_page.dart';
import 'package:mnemonic_card/result_page/result_page.dart';


class ManagePageGoogleNavbarController extends GetxController {
  int selectedIndex = 0;

  // for check network



  static const List<Widget> widgetOptions = <Widget>[
    UserAccountPage(),
    HomePage(),
    ResultPage(),

  ];

}
