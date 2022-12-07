import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page20.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page18 extends StatelessWidget {
  const Page18({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(),
      body:RefactorSarvey(barstatus:'19/25' , number: '19',
      text: 'Are measuring / weighing instruments sealed as per KTPDS (Control) Order 2021 para 42 (1) (IV)?.',onPressed: () {
        Get.to(Page19());
        
      },) ,
    );
  }
}