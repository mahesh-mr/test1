import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/list_qustions/withness_screen/withness_1_screen.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page24 extends StatelessWidget {
  const Page24({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(),
      body:RefactorSarvey(barstatus:'25/25' , number: '25',
      text: 'As per KTPDS (Control) Order 2021 para 43 (I) has distribution of ration goods been done manually other than through e-pos without permission?.',onPressed: () {
        Get.to(WitnessScreen1());
        
      },) ,
    );
  }
}