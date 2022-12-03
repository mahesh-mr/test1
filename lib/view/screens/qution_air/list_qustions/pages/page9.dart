import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/1.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:get/get.dart';

class Page9 extends StatelessWidget {
  const Page9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:RefactorSarvey(barstatus:'10/26' , number: '10',
      text: 'As per KTPDS (control) order 2021 para 42 (2) (iii) is correct amount of ration distributed to the benficiary?',onPressed: () {
        // Get.to(Page1());
        
      },) ,
    );
  }
}