import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mnemonic_card/result_page/result_page_controller.dart';
import 'package:mnemonic_card/view/app_colors.dart';
class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResultPageController>(builder: (controller){
      return Scaffold(
        body: Center(child: Text("Result page", style: AppColors.cardHeadStyle,),),
      );
    });
  }
}
