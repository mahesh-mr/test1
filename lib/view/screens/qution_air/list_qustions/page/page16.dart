
import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page17.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page15 extends StatelessWidget {
  const Page15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(),
      body:RefactorSarvey(barstatus:'16/25' , number: '16',
      text: 'As per KTPDS (Control) Order 2021 para 42 (1) (VII) has the FPS been open on holidays without permission?.',onPressed: () {
        Get.to(Page16());
        
      },) ,
    );
  }
}