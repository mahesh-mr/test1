
import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page13.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page11 extends StatelessWidget {
  const Page11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(),
      body:RefactorSarvey(barstatus:'12/25' , number: '12',
      text: 'According to KTPDS (Control) Order 2021 para 32(1) is kerosene stored in a separate room?.',onPressed: () {
        Get.to(Page12());
        
      },) ,
    );
  }
}