import 'package:flutter/material.dart';

import 'package:fps/view/screens/qution_air/list_qustions/page/page5.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:CustomAppbar() ,
      body:RefactorSarvey(barstatus:'4/25' , number: '4',
      text: 'As per KTPDS (Control) Order 2021 para 42 (1)(XII) F, Is PS and surroundings kept clean?.',onPressed: () {
        Get.to(Page4());
        
      },) ,
    );
  }
}