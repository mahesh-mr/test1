import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/controller/controller/onbording_controller.dart';
import 'package:fps/controller/controller/qustion_pagae_controller/qustion_controller.dart';
import 'package:fps/model/qustion_model.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page26.dart';
import 'package:fps/view/screens/qution_air/list_qustions/withness_screen/withness_1_screen.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_radio/radiobutton.dart';
import 'package:fps/view/screens/widgets/shadow_button.dart';
import 'package:fps/view/style/style.dart';

import 'package:fps/view/screens/screen_register/widgets/custom_textform.dart';
import 'package:fps/view/screens/sreen_survay/widgets/survey_back_button.dart';
import 'package:get/get.dart';

class QustionPage extends StatelessWidget {
  QustionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();

    List<QustionModel> qustionsList = [
      //1=================
      QustionModel(
          text:
              'As per KTPDS(Control) order 2021 para 44, Was the FPS open during inspection?',
          headaLine: 'Start Survey',
          widget: GenderSelector(),
          bar: 0.04,
          number: 1),
//2=======================

      QustionModel(
          text:
              'Name of person who controlled FPS at the time of inspection and relationship with FPS?.',
          headaLine: '',
          widget: CustomTextForm(
            controller: nameController,
            maxline: 1,
            textinputType: TextInputType.text,
            title: '',
            validator: (value) {},
          ),
          bar: 0.08,
          number: 2
          // onPressed: () {
          //   Get.to(Page2());
          // },
          ),
      //3===========================
      QustionModel(
          text:
              'Are the necessary records and registers maintained in the FPS as per KTPDS (Control) Order 2021 para 42 (1)(XI)?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.12,
          number: 3 // onPressed: () {
          //   Get.to(Page3());
          // },
          ),
      //4===================================================
      QustionModel(
          text:
              'As per KTPDS (Control) Order 2021 para 42 (1)(XII) F, Is PS and surroundings kept clean?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.16,
          number: 4),
      //5=================================================
      QustionModel(
          text:
              'Have all receipts of stock available at the time of inspection been received?',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.2,
          number: 5),
      //6=============================================
      QustionModel(
          text:
              'As per KTPDS (Control) Order 2021 para 42 (1) have the items to be displayed in FPS?',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.24000000000000002,
          number: 6),
      //7=============================================
      QustionModel(
          text: 'If so how many cards? ( Enter Card Numbers ).',
          headaLine: '',
          widget: CustomTextForm(
            controller: nameController,
            maxline: 1,
            textinputType: TextInputType.text,
            title: '',
            validator: (value) {},
          ),
          bar: 0.28,
          number: 7),
      //8==========================================
      QustionModel(
          text:
              'Are nameboards of the prescribed format as per KTPDS (Control)Order 2021 Para 42(1) (XXIV) displayed?',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.32,
          number: 8),
      //9===========================================
      QustionModel(
          text:
              'Was necessary facility and cooperation available for inspection under KTPDS (Control) Order 2021 para 42 (1) (XXI)?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.36,
          number: 9),
      //10====================================================
      QustionModel(
          text:
              'As per KTPDS (Control) Order 2021 para 42 (1) (III) does the trader treat the beneficiaries with respect?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.39999999999999997,
          number: 10),
      //11=============================
      QustionModel(
          text:
              'As per KTPDS (Control) Order 2021 para 42 (1) (XIII) whether the food grains were destroyed for the purpose of inspection?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.43999999999999995,
          number: 11),
      //12======================================
      QustionModel(
          text:
              'According to KTPDS (Control) Order 2021 para 32(1) is kerosene stored in a separate room?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.4799999999999999,
          number: 12),
      //13========================================
      QustionModel(
          text:
              'As per KTPDS (Control) Order 2021 para 42 (2) (III) Is correct amount of ration distributed to the beneficiary?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.5199999999999999,
          number: 13),
      //14========================================
      QustionModel(
          text:
              'Under KTPDS (Control) Order 2021 para 42 (2) (V) are unauthorized persons interfering in the activities of FPS?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.5599999999999999,
          number: 14),
      //15========================================
      QustionModel(
          text:
              'According to KTPDS (Control) Order 2021 para 42 (1) (VII) FPS. Are working hours strictly followed?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.6,
          number: 15),
      //16========================================
      QustionModel(
          text:
              'As per KTPDS (Control) Order 2021 para 42 (1) (VII) has the FPS been open on holidays without permission?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.64,
          number: 16),
      //17========================================
      QustionModel(
          text:
              'As per KTPDS (Control) Order 2021 para 42 (1) (VI) Is food grains stored in a place not mentioned in the licence?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.68,
          number: 17),
      //18========================================
      QustionModel(
          text:
              'As per KTPDS (Control) Order 2021 para 42 (1) (II) while distributing ration to the beneficiaries, are the bills properly paid?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.7200000000000001,
          number: 18),
      //19========================================
      QustionModel(
          text:
              'Are measuring / weighing instruments sealed as per KTPDS (Control) Order 2021 para 42 (1) (IV)?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.7600000000000001,
          number: 19),
      //20========================================

      QustionModel(
          text:
              'As per KTPDS (Control) Order 2021 para 42 (1) (II) is excessive price charged from beneficiaries for ration goods?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.8000000000000002,
          number: 20),
      //21==================================
      QustionModel(
          text:
              'As per KTPDS (Control) Order 2021 para 43 (IV) is e-pos machine removed from FPS without permission?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.8400000000000002,
          number: 21),
      //22============================
      QustionModel(
          text:
              'As per KTPDS (Control) Order 2021 para 42 (2) (VI) goods have been procured or distributed through FPS without permission from Civil Supplies Department?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.8800000000000002,
          number: 22),
      //23=============================

      QustionModel(
          text:
              'As per KTPDS (Control) Order 2021 para 42 (2) (VIII) willfully damage e-POS machine?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.9200000000000003,
          number: 23),
      //24=========================================

      QustionModel(
          text:
              'As per KTPDS (Control) Order 2021 para 42 (2) (X) has unusable ration material been distributed?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 0.9600000000000003,
          number: 24),
      //25===========================================

      QustionModel(
          text:
              'As per KTPDS (Control) Order 2021 para 43 (I) has distribution of ration goods been done manually other than through e-pos without permission?.',
          headaLine: '',
          widget: GenderSelector(),
          bar: 1.0000000000000002,
          number: 25),
    ];

    final qustionContoller = QustionController();

    return Scaffold(
   
      backgroundColor: bg,
      appBar: CustomAppbar(),
      body: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: qustionContoller.pagecontroller,
        onPageChanged: qustionContoller.selectedIndex,
        itemCount: qustionsList.length,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${qustionsList[index].number}",
                        style: numbeText,
                      ),
                      SizedBox(
                        width: 70.w,
                        height: 50.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LinearProgressIndicator(
                              backgroundColor: black,
                              value: qustionsList[index].bar,
                              color: yellow,
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              '${qustionsList[index].number}/25',
                              style: TextStyle(
                                  color: yellow, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    qustionContoller.selectedIndex != 0
                        ? ""
                        : qustionsList[index].headaLine!,
                    style: welcomeText,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 100.h,
                    width: 250.w,
                    child: Text(
                      qustionsList[index].text,
                      maxLines: 4,
                      textAlign: TextAlign.center,
                      style: normalText,
                    ),
                  ),

                  qustionsList[index].widget,

                  SizedBox(
                    height: 30.h,
                  ),
                  ShadowButton(
                      onTap: () {
                        bool lastpage = qustionContoller.selectedIndex.value ==
                            qustionsList.length-1;
                        if (lastpage) {
                          Get.offAll(WitnessScreen1());
                        } else {
                          qustionContoller.pagecontroller.nextPage(
                            duration: 550.milliseconds,
                            curve: Curves.ease,
                          );
                        }

                        // qustionContoller.pagecontroller.nextPage(
                        //     duration: 550.milliseconds, curve: Curves.ease);
                      },
                      buttonColor: mainred,
                      height: 40.h,
                      textColor: bg,
                      width: double.infinity,
                      title: 'SUBMIT'),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 40.w),
                  //   child: CustomButton(
                  //       onPressed: () {
                  //         Get.to(Page1());
                  //       },
                  //       title: 'SUBMIT',
                  //       btncolor: mainred,
                  //       textColor: bg),
                  // )
                  h65,
                  SizedBox(
                    height: 20.h,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SurvayBackButton(
                            bg: lightblack,
                            onPressed: () {
                              ('asdfasdfasdfsf');
                              qustionContoller.pagecontroller.previousPage(
                            duration: 550.milliseconds,
                            curve: Curves.ease,
                          );
                              // ignore: unused_local_variable
                            },
                            width: 60.w,
                            height: 20.h,
                            child: Wrap(
                              children: [
                                Icon(
                                  Icons.arrow_back_ios,
                                  color: white,
                                  size: 10.sp,
                                ),
                                Text(
                                  'Back',
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                              ],
                            )),
                        SurvayBackButton(
                          bg: mainred,
                          onPressed: () {},
                          width: 60.w,
                          height: 20.h,
                          child: Wrap(
                            children: [
                              Text(
                                'Next',
                                style: TextStyle(fontSize: 10.sp),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: white,
                                size: 10.sp,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
