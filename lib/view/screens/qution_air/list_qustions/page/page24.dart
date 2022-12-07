import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page25.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page21 extends StatelessWidget {
  const Page21({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(),
      body:RefactorSarvey(barstatus:'22/25' , number: '22',
      text: 'As per KTPDS (Control) Order 2021 para 42 (2) (VI) goods have been procured or distributed through FPS without permission from Civil Supplies Department?.',onPressed: () {
        Get.to(Page22());
        
      },) ,
    );
  }
}