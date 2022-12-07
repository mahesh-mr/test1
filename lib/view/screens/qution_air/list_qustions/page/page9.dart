import 'package:flutter/material.dart';

import 'package:fps/view/screens/qution_air/list_qustions/page/page10.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page8 extends StatelessWidget {
  const Page8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: RefactorSarvey(
        barstatus: '9/25',
        number: '9',
        text:
            'Was necessary facility and cooperation available for inspection under KTPDS (Control) Order 2021 para 42 (1) (XXI)?.',
        onPressed: () {
          Get.to(Page9());
        },
      ),
    );
  }
}
