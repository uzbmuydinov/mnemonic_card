import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:mnemonic_card/registration_page/register_page_controller.dart';

import '../service/constants/app_colors.dart';

// input name
class InputFirstNameField extends StatelessWidget {
  final TextEditingController firstNameController;

  InputFirstNameField({Key? key, required this.firstNameController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 75.h,
      child: TextField(
        controller: firstNameController,
        autofillHints: [AutofillHints.givenName],
        keyboardType: TextInputType.text,
        maxLength: null,
        maxLines: 1,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            isDense: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: "First name",
            hintStyle: const TextStyle(fontSize: 16)),
      ),
    );
  }
}

// input surname
class InputLastNameField extends StatelessWidget {
  final TextEditingController lastNameController;

  InputLastNameField({Key? key, required this.lastNameController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 75.h,
      child: TextField(
        controller: lastNameController,
        autofillHints: [AutofillHints.givenName],
        keyboardType: TextInputType.text,
        maxLength: null,
        maxLines: 1,
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.mainWhiteColor,
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: "Last name",
            hintStyle: const TextStyle(fontSize: 16)),
      ),
    );
  }
}

// input email
class EmailField extends StatelessWidget {
  final TextEditingController emailController;

  EmailField({Key? key, required this.emailController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 75.h,
      child: TextField(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        maxLines: 1,
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.mainWhiteColor,
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            prefixIcon: const Icon(
              CupertinoIcons.mail,
              size: 22,
              color: AppColors.mainblack,
            ),
            hintText: "Email",
            hintStyle: const TextStyle(fontSize: 16)),
      ),
    );
  }
}

// for choose birth date
Widget choseDateOfBirth(
    BuildContext context, RegisterPageController controller, String fromTo) {
  return InkWell(
    onTap: () => controller.showDialog(
      Stack(
        children: [
          CupertinoDatePicker(
            dateOrder:DatePickerDateOrder.mdy,
            minimumYear: 1900,

            maximumYear: DateTime.now().year,

            mode: CupertinoDatePickerMode.date,
            use24hFormat: true,
            onDateTimeChanged: (DateTime newDate) {
              controller.selectBirthDate(newDate);
            },
          ),
          Positioned(

            bottom: 16.0,
            right: 5,
            child: MaterialButton(
              splashColor: Colors.transparent,
                elevation: 1,
                onPressed: () {
                  Navigator.pop(context);

                  // Do something with the selected date
                  print('Selected date: ');
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainblack),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                )),
          ),
        ],
      ),
      context,
    ),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          height: 60.h,
          width: 1.sw,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black38),
            borderRadius: BorderRadius.circular(15.r),
            color: AppColors.mainWhiteColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                fromTo,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.w500),
              ),
              Text(
                controller.selectedBirthDate.toString().substring(0, 10),
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

// password field uchun
class PasswordField extends StatelessWidget {
  final TextEditingController passwordFieldController;

  PasswordField({Key? key, required this.passwordFieldController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainWhiteColor,
      width: 345.w,
      height: 55.h,
      child: TextField(
        controller: passwordFieldController,
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            prefixIcon: const Icon(
              CupertinoIcons.lock,
              size: 25,
              color: AppColors.mainColorGreen,
            ),
            labelStyle: const TextStyle(fontSize: 18),
            hintText: "Password",
            hintStyle: const TextStyle(fontSize: 18)),
      ),
    );
  }
}

// repeat password field uchun
class RepeatPasswordField extends StatelessWidget {
  final TextEditingController repeatPasswordController;

  RepeatPasswordField({Key? key, required this.repeatPasswordController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainWhiteColor,
      width: 345.w,
      height: 55.h,
      child: TextField(
        controller: repeatPasswordController,
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            prefixIcon: const Icon(
              CupertinoIcons.lock,
              size: 25,
              color: AppColors.mainColorGreen,
            ),
            labelStyle: const TextStyle(fontSize: 18),
            hintText: "Repeat Password",
            hintStyle: const TextStyle(fontSize: 18)),
      ),
    );
  }
}

// for select region
Widget dropDownButton(RegisterPageController controller, String value,
    void Function(String?) function) {
  return Container(
    height: 55.h,
    alignment: Alignment.center,
    padding: const EdgeInsets.only(left: 10, right: 10),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          15,
        )),
    child: DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        alignment: Alignment.centerLeft,
        borderRadius: BorderRadius.circular(
          15,
        ),
        isExpanded: true,
        hint: Text(value),
        style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontFamily: "Ubuntu",
            fontWeight: FontWeight.w500),
        icon: const Icon(Icons.keyboard_arrow_down),
        iconSize: 24,
        onChanged: function,
        items: controller.allRegions.map((String tag) {
          return DropdownMenuItem<String>(
            value: tag,
            child: Text(
              tag,
            ),
          );
        }).toList(),
      ),
    ),
  );
}

// for select gender
Widget selectGender(RegisterPageController controller, String value,
    void Function(String?) function) {
  return Container(
    height: 55.h,
    alignment: Alignment.center,
    padding: const EdgeInsets.only(left: 20, right: 10),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          15,
        )),
    child: DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        alignment: Alignment.centerLeft,
        borderRadius: BorderRadius.circular(
          15,
        ),
        isExpanded: true,
        hint: Text(value),
        style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontFamily: "Ubuntu",
            fontWeight: FontWeight.w500),
        icon: const Icon(Icons.keyboard_arrow_down),
        iconSize: 24,
        onChanged: function,
        items: controller.genders.map((String tag) {
          return DropdownMenuItem<String>(
            value: tag,
            child: Text(
              tag,
            ),
          );
        }).toList(),
      ),
    ),
  );
}

// for get phone number


class PhoneNumberField extends StatelessWidget {
  final RegisterPageController controller;
  final Color color;

  const PhoneNumberField({required this.controller, required this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.h,
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(11.r),
        ),
        child: TextField(
          onChanged: (text) {
            controller.onChangedTextField(text, context);
          },
          controller: controller.phoneNumberController,
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: SizedBox(
                width: 116.w,
                child: Row(
                  children: [
                    /// Flag
                    Image.asset(
                      'assets/images/im_flag_uzb.png',
                      width: 32.w,
                      height: 32.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),

                    /// Prefix Number
                    Text(
                      '+998',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: AppColors.mainColorBlack,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),

                    /// Divider
                    VerticalDivider(
                      color: const Color(0xFFC4C4C4),
                      indent: 15.h,
                      endIndent: 15.h,
                      thickness: 0.5,
                    )
                  ],
                ),
              )),
          inputFormatters: [
            controller.numberMaskFormat,
          ],
          cursorColor: AppColors.colorTextLightGrey,
          keyboardType: TextInputType.phone,
          maxLines: 1,
          textAlignVertical: TextAlignVertical.center,
          style: const TextStyle(
              color: AppColors.mainColorBlack, fontWeight: FontWeight.w500),
        ));
  }
}

void succefulRegisterDialog({required BuildContext context, required String title, required String body, required Function() confirm}) async {
  return showDialog<void>(


    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(

        actionsPadding: EdgeInsets.zero,
        backgroundColor: Colors.white,
        buttonPadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
        content: Container(
          constraints: BoxConstraints(minWidth: 100.w, maxHeight: 250.h),
          child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Lottie.asset("assets/lottiefiles/done.json",width: 200.w, height: 200.h,repeat: false, )
          ),
        ),
        actions: [
          Container(
            height: 60.h,
            margin: EdgeInsets.only(top: 1.h),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colors.grey, width: 0.5.h))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: confirm,
                  child: Text(
                    "Ok",
                    style: TextStyle(fontSize: 19.sp, color: Colors.blue),
                  ),
                ),
              ],
            ),
          )
        ],
      );
    },
  );
}
