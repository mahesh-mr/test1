import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/1.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/page4.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:RefactorSarvey(barstatus:'4/26' , number: '4',
      text: 'As per KTPDS (controll) order 2021 para 42 (1)(xii)F, is the surroundings kept clean?',onPressed: () {
        Get.to(Page4());
        
      },) ,
    );
  }
}