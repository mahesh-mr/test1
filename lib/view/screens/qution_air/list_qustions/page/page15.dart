
import 'package:flutter/material.dart';

import 'package:fps/view/screens/qution_air/list_qustions/page/page16.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page14 extends StatelessWidget {
  const Page14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(),
      body:RefactorSarvey(barstatus:'15/25' , number: '15',
      text: 'According to KTPDS (Control) Order 2021 para 42 (1) (VII) FPS. Are working hours strictly followed?.',onPressed: () {
        Get.to(Page15());
        
      },) ,
    );
  }
}