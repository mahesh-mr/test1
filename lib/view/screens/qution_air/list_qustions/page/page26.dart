import 'package:flutter/material.dart';

import 'package:fps/view/screens/qution_air/list_qustions/page/page27.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';

import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page23 extends StatelessWidget {
  const Page23({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(),
      body:RefactorSarvey(barstatus:'24/25' , number: '24',
      text: 'As per KTPDS (Control) Order 2021 para 42 (2) (X) has unusable ration material been distributed?.',onPressed: () {
        Get.to(Page24());
        
      },) ,
    );
  }
}