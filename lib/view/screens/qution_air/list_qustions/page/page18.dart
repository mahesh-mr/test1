import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page19.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page17 extends StatelessWidget {
  const Page17({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(),
      body:RefactorSarvey(barstatus:'18/25' , number: '18',
      text: 'As per KTPDS (Control) Order 2021 para 42 (1) (II) while distributing ration to the beneficiaries, are the bills properly paid?.',onPressed: () {
        Get.to(Page18());
        
      },) ,
    );
  }
}