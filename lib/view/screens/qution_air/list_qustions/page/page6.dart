import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page7.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: RefactorSarvey(
        barstatus: '6/25',
        number: '6',
        text:
            'As per KTPDS (Control) Order 2021 para 42 (1) have the items to be displayed in FPS?',
        onPressed: () {
          Get.to(Page6());
        },
      ),
    );
  }
}
