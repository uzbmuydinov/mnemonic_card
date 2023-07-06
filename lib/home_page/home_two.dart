import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mnemonic_card/animation_card/animationFlipCardComplate.dart';
import 'package:mnemonic_card/home_page/home_page_controller.dart';

import '../service/constants/app_colors.dart';

class HomeTwo extends StatefulWidget {
  const HomeTwo({super.key});

  @override
  State<HomeTwo> createState() => _HomeTwoState();
}

class _HomeTwoState extends State<HomeTwo> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(builder: (controller) {
      return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(height: 20,),
              Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: AppColors.mainColorGreen, width: 3))),
                  backgroundImage: AssetImage("assets/images/unnamed.jpg"),
                  radius: 30.r,
                ),
                SizedBox(
                  width: 8.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child:  Text(
                        "Test user",
                        style: AppColors.bukvalni,
                      ),
                    ),

                    SizedBox(
                      height: 8.h,
                    ),
                    // for mail
                    SizedBox(
                      child: Text(
                        "Account status: Demo",
                        style: AppColors.kulrangMatn,
                      ),
                    ),


                  ],
                )
              ],
            ),
                SizedBox(height: 20,),

                //noun

                Container(
                  height: 118.h,
                  margin: EdgeInsets.only(
                    bottom: 15.h,
                  ),
                  padding: EdgeInsets.all(10.r),
                  width: 1.sw,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: InkWell(
                    onTap: () => Get.to(
                      () => AllCardsScreen(),
                      transition: Transition.fadeIn,
                      duration: const Duration(milliseconds: 150),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 3))),
                          backgroundImage: AssetImage("assets/images/7494959.jpg"),
                          radius: 30.r,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          "100 essential nouns",
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 20.sp,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // verbs
                Container(
                  height: 118.h,
                  margin: EdgeInsets.only(
                    bottom: 15.h,
                  ),
                  padding: EdgeInsets.all(10.r),
                  width: 1.sw,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: InkWell(
                    onTap: (){},
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 3))),
                          backgroundImage: AssetImage("assets/images/7494959.jpg"),
                          radius: 30.r,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          "100 essential verbs",
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                            fontSize: 20.sp,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // adjectives
                Container(
                  height: 118.h,
                  margin: EdgeInsets.only(
                    bottom: 15.h,
                  ),
                  padding: EdgeInsets.all(10.r),
                  width: 1.sw,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: InkWell(
                    onTap: () {                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 3))),
                          backgroundImage: AssetImage("assets/images/7494959.jpg"),
                          radius: 30.r,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          "100 essential adjectives",
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                            fontSize: 20.sp,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // general
                Container(
                  height: 118.h,
                  margin: EdgeInsets.only(
                    bottom: 15.h,
                  ),
                  padding: EdgeInsets.all(10.r),
                  width: 1.sw,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: InkWell(
                    onTap: () {

                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 3))),
                          backgroundImage: AssetImage("assets/images/7494959.jpg"),
                          radius: 30.r,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          "General",
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                            fontSize: 20.sp,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      );
    });
  }
}
