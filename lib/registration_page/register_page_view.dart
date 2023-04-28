import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

            minimumDate: DateTime.now(),
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
  final TextEditingController phoneNumberController;

  PhoneNumberField({Key? key, required this.phoneNumberController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainWhiteColor,
      width: 390.w,
      height: 55.h,
      child: TextField(
        keyboardType: TextInputType.phone,
        controller: phoneNumberController,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            prefixIcon: const Icon(
              CupertinoIcons.phone,
              size: 25,
              color: AppColors.mainColorGreen,
            ),
            labelStyle: const TextStyle(fontSize: 18),
            hintText: "Phone number",
            hintStyle: const TextStyle(fontSize: 18)),
      ),
    );
  }
}
