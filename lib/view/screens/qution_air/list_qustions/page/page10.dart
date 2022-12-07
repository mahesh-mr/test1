import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page11.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page9 extends StatelessWidget {
  const Page9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: RefactorSarvey(
        barstatus: '10/25',
        number: '10',
        text:
            'As per KTPDS (Control) Order 2021 para 42 (1) (III) does the trader treat the beneficiaries with respect?.',
        onPressed: () {
          Get.to(Page10());
        },
      ),
    );
  }
}
