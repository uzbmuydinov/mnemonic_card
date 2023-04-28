import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mnemonic_card/manage_page/manage_page_googleNavbar.dart';
import 'package:mnemonic_card/registration_page/register_page_controller.dart';
import 'package:mnemonic_card/service/constants/app_colors.dart';
import 'register_page_view.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterPageController>(builder: (controller){
      return Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,title: Text("Register",style: TextStyle(color: Colors.black, fontSize: 25),),centerTitle: true),

        backgroundColor: AppColors.mainBackgroundColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 15, right: 15, ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: 20.h),
                  InputFirstNameField(firstNameController: controller.firstNameController,),
                  SizedBox(height: 20.h,),
                  InputLastNameField(lastNameController: controller.lastNameController),
                  SizedBox(height: 20.h,),
                  EmailField(emailController: controller.emailController),
                  SizedBox(height: 20.h,),

                  choseDateOfBirth(context, controller, "Date of birth"),
                  SizedBox(height: 20.h,),
                  Text("Adress"),
                  SizedBox(height: 10.h,),
                  dropDownButton(controller, controller.selectedRegion,
                      controller.changeSelectedRegion),
                  SizedBox(height: 20.h,),
                  Text("Gender"),
                  SizedBox(height: 10.h,),
                  selectGender(controller, controller.selectedGender,
                      controller.changeSelectedGender),
                  SizedBox(height: 20.h,),
                  PhoneNumberField(phoneNumberController: controller.phoneNumberController,),
                  SizedBox(height: 20.h,),
                  FadeInUp(
                    duration: Duration(seconds: 1),
                    child: Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r)),
                            backgroundColor: AppColors.mainColorGreen,
                            elevation: 0,
                            fixedSize: Size(252.w, 50.h)),
                        onPressed: () {

                          controller.passwordController.clear();
                          Get.offAll(const ManageGoogleNavBar());
                          debugPrint("Home pagega o'tdimi");
                        },
                        child: Text(
                          "Create account",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: AppColors.mainWhiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )
      );
    });
  }
}
