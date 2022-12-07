
import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page15.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page13 extends StatelessWidget {
  const Page13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(),
      body:RefactorSarvey(barstatus:'14/25' , number: '14',
      text: 'Under KTPDS (Control) Order 2021 para 42 (2) (V) are unauthorized persons interfering in the activities of FPS?.',onPressed: () {
        Get.to(Page14());
        
      },) ,
    );
  }
}