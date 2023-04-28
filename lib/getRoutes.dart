
import 'package:get/get.dart';
import 'package:mnemonic_card/login_page/login_page.dart';
import 'package:mnemonic_card/splash_page/splash_page.dart';
appRoutes()=>[
  GetPage(
    name: '/login',
    page: () => LoginPage(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/splash',
    page: () => SplashPage(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: Duration(milliseconds: 500),
  ),
];