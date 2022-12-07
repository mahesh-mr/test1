import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page24.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Pages20 extends StatelessWidget {
  const Pages20({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: RefactorSarvey(
        barstatus: '21/25',
        number: '21',
        text:
            'As per KTPDS (Control) Order 2021 para 43 (IV) is e-pos machine removed from FPS without permission?.',
        onPressed: () {
          Get.to(Page21());
        },
      ),
    );
  }
}
