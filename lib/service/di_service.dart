import 'package:get/get.dart';
import 'package:mnemonic_card/animation_card/animation_card_controller.dart';
import 'package:mnemonic_card/home_page/home_page_controller.dart';
import 'package:mnemonic_card/login_page/login_page_controller.dart';
import 'package:mnemonic_card/manage_page/manage_page_googleNavbar_controller.dart';
import 'package:mnemonic_card/profile_page/user_profile_controller.dart';
import 'package:mnemonic_card/profile_page/user_profile_page.dart';
import 'package:mnemonic_card/registration_page/register_page_controller.dart';
import 'package:mnemonic_card/result_page/result_page_controller.dart';
import 'package:mnemonic_card/splash_page/splash_page_controller.dart';




class DIService implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimationCardController>(() => AnimationCardController(), fenix: true);
    Get.lazyPut<SplashPageController>(() => SplashPageController(), fenix: true);
    Get.lazyPut<RegisterPageController>(() => RegisterPageController(), fenix: true);
    Get.lazyPut<LoginPageController>(() => LoginPageController(), fenix: true);
    Get.lazyPut<HomePageController>(() => HomePageController(), fenix: true);
    Get.lazyPut<ResultPageController>(() => ResultPageController(), fenix: true);
    Get.lazyPut<UserAccountPage>(() => UserAccountPage(), fenix: true);
    Get.lazyPut<UserProfileController>(() => UserProfileController(), fenix: true);

    Get.lazyPut<ManagePageGoogleNavbarController>(() => ManagePageGoogleNavbarController(), fenix: true);


  }
}
