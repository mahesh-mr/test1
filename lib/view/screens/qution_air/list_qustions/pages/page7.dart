import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/1.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/page7.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/page8.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:get/get.dart';

class Page7 extends StatelessWidget {
  const Page7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:RefactorSarvey(barstatus:'8/26' , number: '8',
      text: 'As per KTPDS (control) order 2021 para 42 (1) (xiii) whether the food grains were destroyed for the purpose of inspection?',onPressed: () {
        Get.to(Page8());
        
      },) ,
    );
  }
}