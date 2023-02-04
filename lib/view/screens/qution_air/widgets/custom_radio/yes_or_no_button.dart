import 'package:flutter/material.dart';
import 'package:fps/controller/controller/qustion_pagae_controller/qustion_controller.dart';
import 'package:fps/model/qustion_model.dart';

import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';

class YesOrNoButton extends StatefulWidget {
  YesOrNoButton({super.key, required this.qustionIdex});
  int qustionIdex;

  @override
  State<YesOrNoButton> createState() => _YesOrNoButtonState();
}

class _YesOrNoButtonState extends State<YesOrNoButton> {
  // String initialIndex = '';
  final qustionController = Get.put(QustionController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 120,
        width: 170,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customButton("YES"),
            h5,
            customButton("NO"),
          ],
        ),
      ),
    );
  }
  //====================================================

  Widget customButton(String text) {
    bool? isSelectedYes = qustionsList[widget.qustionIdex].isSelectedYes;
    Color buttonColor = white;
    Color textColor = grey;

    if (text == "YES" && isSelectedYes != null && isSelectedYes ||
        text == "NO" && isSelectedYes != null && !isSelectedYes) {
      buttonColor = mainred;
      textColor = white;
    }

    return GetBuilder<QustionController>(builder: (controller) {
      return InkWell(
        splashColor: yellow,
        onTap: () {
          setState(() {
            if (text == 'YES') {
              qustionsList[widget.qustionIdex].isSelectedYes = true;
            } else {
              qustionsList[widget.qustionIdex].isSelectedYes = false;
            }
            print(qustionsList[widget.qustionIdex].isSelectedYes);
            // ini
            //tialIndex = index;
          });
        },
        child: Container(
          height: 40,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: buttonColor,
              boxShadow: const [
                BoxShadow(
                  color: grey,
                  offset: Offset(4, 4),
                  blurRadius: 2,
                  spreadRadius: 1,
                ),
                BoxShadow(
                  color: white,
                  offset: Offset(-4, -4),
                  blurRadius: 2,
                  spreadRadius: 1,
                ),
              ]),
          alignment: Alignment.center,
          margin: EdgeInsets.all(2.0),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      );
    });
  }
}

Widget RadioRefactor(
    {required VoidCallback? onTap,
    required Color? buttonColor,
    required String? text,
    required Color? textColor}) {
  return InkWell(
    splashColor: yellow,
    onTap: onTap,
    child: Container(
      height: 40,
      width: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: buttonColor,
          // initialIndex == index ? mainred : white,
          boxShadow: const [
            BoxShadow(
              color: grey,
              offset: Offset(4, 4),
              blurRadius: 2,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: white,
              offset: Offset(-4, -4),
              blurRadius: 2,
              spreadRadius: 1,
            ),
          ]),
      alignment: Alignment.center,
      margin: EdgeInsets.all(2.0),
      child: Text(
        text!,
        style: TextStyle(color: textColor),
      ),
    ),
  );
}
