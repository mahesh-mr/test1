import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page2.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page12.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page10 extends StatelessWidget {
  const Page10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: RefactorSarvey(
        barstatus: '11/25',
        number: '11',
        text:
            'As per KTPDS (Control) Order 2021 para 42 (1) (XIII) whether the food grains were destroyed for the purpose of inspection?.',
        onPressed: () {
          Get.to(Page11());
        },
      ),
    );
  }
}
