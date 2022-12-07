import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page9.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page7 extends StatelessWidget {
  const Page7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: RefactorSarvey(
        barstatus: '8/25',
        number: '8',
        text:
            'Are nameboards of the prescribed format as per KTPDS (Control)Order 2021 Para 42(1) (XXIV) displayed?',
        onPressed: () {
          Get.to(Page8());
        },
      ),
    );
  }
}
