import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page18.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page16 extends StatelessWidget {
  const Page16({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(),
      body:RefactorSarvey(barstatus:'17/25' , number: '17',
      text: 'As per KTPDS (Control) Order 2021 para 42 (1) (VI) Is food grains stored in a place not mentioned in the licence?.',onPressed: () {
        Get.to(Page17());
        
      },) ,
    );
  }
}