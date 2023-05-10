import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mnemonic_card/manage_page/manage_page_googleNavbar.dart';
import 'package:mnemonic_card/view/is_loading.dart';

class RegisterPageController extends GetxController {
  bool isLoading = false;
  late final int userAge;
  late final int userbirthDay;
  late final int userbirthMonth;
  String phoneNumber = '+998';
  int lengthNumber = 0;
  bool isButtonActive = false;

  // for input date
  DateTime initDate = DateTime.now();
  DateTime selectedBirthDate = DateTime.now();

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  // for choose region
  String selectedRegion = "Select region";
  String selectedGender="Gender";

  List<String> genders=["Male", "Female"];
  List<String> allRegions = <String>[
    "Andijon",
    "Buxoro",
    "Far'ona",
    "Jizzax",
    "Xorazm",
    "Namangan",
    "Navoiy",
    "Qashqadaryo",
    "Samarqand",
    "Sirdaryo",
    "Surxandaryo",
    "Toshkent viloyati",
    "Toshkent shaxri",
    "Qoraqalpog'iston respublikasi"
  ];



  void initTimer() {
    debugPrint("Ishga tushdi");
    Timer(const Duration(seconds: 3), () {
      debugPrint("Timer tugadi");
      Get.back();
      Get.off(ManageGoogleNavBar());
    });
  }


  // for show dialog widget
  void showDialog(Widget child, BuildContext context) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
              height: 216.h,
              padding: EdgeInsets.only(top: 6.h),
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              color: CupertinoColors.systemBackground.resolveFrom(context),
              child: child,
            ));
  }

  void changeStartDateTime(DateTime newDate) {
    initDate = newDate;
    update();
  }

  void selectBirthDate(DateTime newDate) {
    selectedBirthDate = newDate;
    update();
  }
  void changeSelectedRegion(String? newValue) {
    selectedRegion = newValue ?? selectedRegion;
    update();
  }
  void changeSelectedGender(String? newValue) {
    selectedGender = newValue ?? selectedGender;
    update();
  }

  void onChangedTextField(String text, BuildContext context) {
    if (text.length == 11) {
      phoneNumber = '+998';
      FocusScope.of(context).unfocus();
      phoneNumber += text;
      lengthNumber = 11;
      phoneNumber = phoneNumber.replaceAll(' ', "");
      update();
    }
  }

  var numberMaskFormat = MaskTextInputFormatter(
      mask: '## ### ####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  void setLoadingStatus(bool isLoading) {
    this.isLoading = isLoading;
    update();
  }

  Future<void> goMainPage() async {
    Get.back();
    progressIndicator(Get.context!);
    Get.offAll(() => const ManageGoogleNavBar());

  }


}
