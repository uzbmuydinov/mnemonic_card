import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mnemonic_card/login_page/login_page_controller.dart';
import 'package:mnemonic_card/login_page/login_page_view.dart';
import 'package:mnemonic_card/service/constants/app_colors.dart';
import 'package:mnemonic_card/service/utils.dart';
import 'package:mnemonic_card/view/is_loading.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginPageController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.mainBackgroundColor,
          body: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 230.h,
                    ),

                    FadeInDown(
                      duration: const Duration(seconds: 1),
                      child: const Text(
                        "Sign in",
                        style: AppColors.mainTextSyle,
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),

                    FadeInUp(
                      duration: const Duration(seconds: 1),
                      child: LoginTextField(
                          loginFieldController: controller.loginController),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    // for password input
                    FadeInUp(
                      duration: const Duration(seconds: 1),
                      child: PasswordField(
                          passwordFieldController:
                              controller.passwordController),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),

                    // forgot password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              Utils.fireToast("Jarayonda");
                            },
                            child: const Text(
                              "Forgot password?",
                              style: TextStyle(color: Colors.blueAccent),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    // sign in button
                    FadeInUp(
                      duration: const Duration(seconds: 1),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r)),
                            backgroundColor: AppColors.mainblack,
                            elevation: 0,
                            fixedSize: Size(300.w, 50.h)),
                        onPressed: () {
                          controller.checkField();
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: AppColors.mainWhiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 15,
                    ),
                    // Sign with Google button
                    FadeInUp(
                        duration: const Duration(seconds: 1),
                        child: SignWithGoogleButton()),

                    const SizedBox(
                      height: 60,
                    ),
                    RegisterTextAndButton()
                  ],
                ),
                Visibility(
                  visible: controller.isLoading,
                  child: const IsLoadingPage(
                    backgroundColor: Colors.black54,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
