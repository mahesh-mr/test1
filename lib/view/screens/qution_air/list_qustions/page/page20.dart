import 'package:flutter/material.dart';

import 'package:fps/view/screens/qution_air/list_qustions/page/page23.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page19 extends StatelessWidget {
  const Page19({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(),
      body:RefactorSarvey(barstatus:'20/25' , number: '20',
      text: 'As per KTPDS (Control) Order 2021 para 42 (1) (II) is excessive price charged from beneficiaries for ration goods?.',onPressed: () {
        Get.to(Pages20());
        
      },) ,
    );
  }
}