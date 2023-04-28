import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mnemonic_card/home_page/home_page_controller.dart';
import 'package:mnemonic_card/view/app_colors.dart';
class HomeButtons extends StatelessWidget {
  const HomeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,
      body: GetBuilder<HomePageController>(
        builder: (controller){
          return Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
           SizedBox(height: 40,),

                Expanded(
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                        padding: EdgeInsets.only(bottom: 18.h,left: 15.w,right: 15.w),
                        itemCount: controller.menuTitle.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(top: 15.h),
                            padding: EdgeInsets.only(left: 15.w, right: 15.w),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.r ),
                            ),
                            width: 1.sw,
                            height: 90.h,
                            child: Row(

                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        /// #Name
                                        Text(
                                          maxLines: 1,
                                          controller.menuTitle[index],
                                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp,overflow: TextOverflow.ellipsis),),
                                        /// #GroupName
                                        Text(
                                          maxLines: 1,
                                          "ctrl.allBirthdayForDirector[index].groupName",
                                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp,overflow: TextOverflow.ellipsis),),
                                        /// #Birth date
                                        Text(
                                          "ctrl.allBirthdayForDirector[index].date.toString().substring(0, 10)",
                                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp,),),
                                      ],
                                    ),
                                  ),
                                ],
                            ),
                          );
                        }),
                )
              ],
            ),

          );
        },
      ),
    );
  }
}
