import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page4.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:CustomAppbar() ,
      body:RefactorSarvey(barstatus:'3/25' , number: '3',
      text: 'Are the necessary records and registers maintained in the FPS as per KTPDS (Control) Order 2021 para 42 (1)(XI)?.',onPressed: () {
        Get.to(Page3());
        
      },) ,
    );
  }
}