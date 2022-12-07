import 'package:flutter/material.dart';

import 'package:fps/view/screens/qution_air/list_qustions/page/page26.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';

import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page22 extends StatelessWidget {
  const Page22({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(),
      body:RefactorSarvey(barstatus:'23/25' , number: '23',
      text: 'As per KTPDS (Control) Order 2021 para 42 (2) (VIII) willfully damage e-POS machine?.',onPressed: () {
        Get.to(Page23());
        
      },) ,
    );
  }
}