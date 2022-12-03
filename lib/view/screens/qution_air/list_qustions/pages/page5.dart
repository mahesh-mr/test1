import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/1.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/page6.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:get/get.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:RefactorSarvey(barstatus:'6/26' , number: '6',
      text: 'As per KTPDS (control) order 2021 para 42 (2) (1) are the ration cards of the customers kept in FPS after distribution of ration?',onPressed: () {
        Get.to(Page6());
        
      },) ,
    );
  }
}