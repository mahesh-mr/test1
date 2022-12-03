import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/page2.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:RefactorSarvey(barstatus:'2/26' , number: '2',
      text: 'Name of person who controlled FPS at the time of inspection and his relationship with FPS.',onPressed: () {
        Get.to(Page2());
        
      },) ,
    );
  }
}