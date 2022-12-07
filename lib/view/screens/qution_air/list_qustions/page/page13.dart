
import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page14.dart';


import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page12 extends StatelessWidget {
  const Page12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(),
      body:RefactorSarvey(barstatus:'13/25' , number: '13',
      text: 'As per KTPDS (Control) Order 2021 para 42 (2) (III) Is correct amount of ration distributed to the beneficiary?.',onPressed: () {
        Get.to(Page13());
        
      },) ,
    );
  }
}