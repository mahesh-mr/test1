import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/1.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/page3.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:RefactorSarvey(barstatus:'3/26' , number: '3',
      text: 'Are the necessary records and register maintained in the FPS as per KTPDS (control) order 2021 pera 42 (1) (xi)?',onPressed: () {
        Get.to(Page3());
        
      },) ,
    );
  }
}