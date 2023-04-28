// login field uchun
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mnemonic_card/registration_page/register_page.dart';
import 'package:mnemonic_card/service/utils.dart';
import '../service/constants/app_colors.dart';

// password field uchun
class PasswordField extends StatefulWidget {
  final TextEditingController passwordFieldController;

  PasswordField({Key? key, required this.passwordFieldController})
      : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obsecureCheck = true;

  void invers() {
    setState(() {
      obsecureCheck = !obsecureCheck;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainWhiteColor,
      width: 360.w,
      height: 55.h,
      child: TextField(
        controller: widget.passwordFieldController,
        obscureText: obsecureCheck,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            prefixIcon: const Icon(
              CupertinoIcons.lock,
              size: 23,
              color: AppColors.mainblack,
            ),
            suffixIcon: IconButton(
                splashColor: Colors.transparent,
                icon: Icon(
                  obsecureCheck ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  invers();
                }),
            labelStyle: const TextStyle(fontSize: 18),
            hintText: "Password",
            hintStyle: const TextStyle(fontSize: 18)),
      ),
    );
  }
}

// testLogin uchun
class LoginTextField extends StatelessWidget {
  final TextEditingController loginFieldController;

  LoginTextField({Key? key, required this.loginFieldController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.w,
      height: 55.h,
      child: TextField(
        controller: loginFieldController,
        autofillHints: const [AutofillHints.username],
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.mainWhiteColor,
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            prefixIcon: const Icon(CupertinoIcons.mail,
                size: 22, color: AppColors.mainblack),
            hintText: "Email",
            hintStyle: const TextStyle(fontSize: 18)),
      ),
    );
  }
}

Widget SignWithGoogleButton() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        side: BorderSide(color: Colors.black38, width: 0.5),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
        backgroundColor: AppColors.mainWhiteColor,
        foregroundColor: Colors.black38,
        elevation: 0,
        fixedSize: Size(290.w, 50.h)),
    onPressed: () {
      Utils.fireToast("Bu funksiya keyingi talqinda ishga tushadi");
    },
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              child: Image.asset("assets/images/google_icon.png"),
              maxRadius: 13,
              backgroundColor: Colors.transparent),
          const SizedBox(
            width: 10,
          ),
          const Text(
            "Sign with google",
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    ),
  );
}

Widget RegisterTextAndButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Don't have an account?"),
      const SizedBox(
        width: 15,
      ),
      TextButton(
          onPressed: () {
            Get.to(const RegisterPage());
          },
          child: const Text(
            'Create account',
            style: TextStyle(color: Colors.blueAccent),
          ))
    ],
  );
}
