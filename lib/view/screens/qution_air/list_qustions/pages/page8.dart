import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/1.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/page9.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:get/get.dart';

class Page8 extends StatelessWidget {
  const Page8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:RefactorSarvey(barstatus:'9/26' , number: '9',
      text: 'Accoding to KTPDS (control) order 2021 para 32(1) is kerosene stored in a separate room?',onPressed: () {
        Get.to(Page9());
        
      },) ,
    );
  }
}