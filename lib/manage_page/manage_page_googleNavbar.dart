import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mnemonic_card/home_page/home_page.dart';
import 'package:mnemonic_card/home_page/home_page_controller.dart';
import 'package:mnemonic_card/manage_page/manage_page_googleNavbar_controller.dart';
import 'package:mnemonic_card/profile_page/user_profile_page.dart';
import 'package:mnemonic_card/result_page/result_page.dart';
import 'package:mnemonic_card/result_page/result_page_controller.dart';


class ManageGoogleNavBar extends StatefulWidget {
  const ManageGoogleNavBar({Key? key}) : super(key: key);

  @override
  State<ManageGoogleNavBar> createState() => _ManageGoogleNavBarState();
}

class _ManageGoogleNavBarState extends State<ManageGoogleNavBar> {



  // Future<void> checkForUpdate() async {
  //   InAppUpdate.checkForUpdate().then((updateInfo) {
  //
  //     if (updateInfo.updateAvailability == UpdateAvailability.updateAvailable) {
  //       if (updateInfo.immediateUpdateAllowed) {
  //         // Perform immediate update
  //         InAppUpdate.performImmediateUpdate().then((appUpdateResult) {
  //           if (appUpdateResult == AppUpdateResult.success) {
  //             //App Update successful
  //           }
  //         });
  //       } else if (updateInfo.flexibleUpdateAllowed) {
  //         //Perform flexible update
  //         InAppUpdate.startFlexibleUpdate().then((appUpdateResult) {
  //           if (appUpdateResult == AppUpdateResult.success) {
  //             //App Update successful
  //             InAppUpdate.completeFlexibleUpdate();
  //           }
  //         });
  //       }
  //     }
  //   });
  // }



  void initState() {

    Get.find<HomePageController>();
    Get.find<ResultPageController>();
    Get.find<UserAccountPage>();



    super.initState();
  }


  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ResultPage(),
    UserAccountPage(),


  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ManagePageGoogleNavbarController>(builder: (controller) {
      return Scaffold(

        backgroundColor: Colors.white,
        body: Container(
          child: _widgetOptions.elementAt(controller.selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[400]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.teal,
                iconSize: 26,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 600),
                tabBackgroundColor: Colors.grey[200]!,
                color: Colors.black,
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Main page',
                  ),
                  GButton(
                    icon: Icons.speed_outlined,
                    text: 'Results',
                  ),

                  GButton(
                    icon: Icons.account_circle_outlined,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: controller.selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    controller.selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),

      );
    });
  }
}
