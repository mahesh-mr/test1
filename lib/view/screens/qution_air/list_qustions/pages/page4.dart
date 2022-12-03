import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/1.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/page5.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:get/get.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:RefactorSarvey(barstatus:'5/26' , number: '5',
      text: 'As per KTPDS (control) order 2021 para 42 (1) have the items to be displayed in FPS?',onPressed: () {
        Get.to(Page5());
        
      },) ,
    );
  }
}