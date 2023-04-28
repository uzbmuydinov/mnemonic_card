import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mnemonic_card/manage_page/manage_page_googleNavbar.dart';
import 'package:mnemonic_card/service/utils.dart';

class LoginPageController extends GetxController {
  bool isLoading = false;
  var obsecurePassword=true.obs;
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  void toggleObscureText() {
    obsecurePassword.toggle();
  }

  void apiPostAuthenticate() {
    String hemisId = loginController.text.trim().toString();
    String password = passwordController.text.trim().toString();
    if (hemisId.isNotEmpty && password.isNotEmpty) {
      //TODO
// shu yerga firebase bilan ulanadigan logika yoziladi

      /*  DioMethod()
          .postDio(
              api: DioRoutePath.postAuthenticate,
              body: DioRoutePath.bodyAuthenticate(
                  hemisId: hemisId, password: password))
          .then((value) => {
                getToken(value!),
              });*/
    } else if (hemisId.isEmpty || password.isEmpty) {
      Utils.fireToast("Maydonlarni to'gr'i to'ldiring");
    }
  }

  void setLoadingStatus(bool isLoading) {
    this.isLoading = isLoading;
    update();
  }

  void checkField(){
    String initLogin=loginController.text.trim().toString();
    String initPassword=passwordController.text.trim().toString();

    if(initLogin.isNotEmpty&&initPassword.isNotEmpty){
      Get.off(ManageGoogleNavBar());
    } else if(initLogin.isEmpty||initPassword.isEmpty) {
      Utils.fireToast("Maydonlarni to'g'ri to'ldiring");
    }
    }
  }

