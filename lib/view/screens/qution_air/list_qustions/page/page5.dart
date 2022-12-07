import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page6.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:get/get.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: RefactorSarvey(
        barstatus: '5/25',
        number: '5',
        text:
            'Have all receipts of stock available at the time of inspection been received?',
        onPressed: () {
          Get.to(Page5());
        },
      ),
    );
  }
}
