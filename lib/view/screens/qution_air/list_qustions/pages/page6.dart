

import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/1.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/page7.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:get/get.dart';

class Page6 extends StatelessWidget {
  const Page6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:RefactorSarvey(barstatus:'7/26' , number: '7',
      text: 'Are nameboards of the prescribed format as per KTPDS (control)order 2021 para 42(1) (xxiv) displayed?',onPressed: () {
        Get.to(Page7());
        
      },) ,
    );
  }
}