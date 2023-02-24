// ignore_for_file: unrelated_type_equality_checks, must_be_immutable

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:fps/controller/controller/qustion_pagae_controller/qustion_controller.dart';
import 'package:fps/controller/controller/tost/tost.dart';
import 'package:fps/controller/service/dioclint/token/token.dart';
import 'package:fps/controller/service/qustion_air_service/dational_qustio_service/aditional_qustion_service.dart';
import 'package:fps/controller/service/qustion_air_service/qustion_air_service.dart';
import 'package:fps/model/balace_card_model.dart';
import 'package:fps/view/screens/camerScreen/camera_shop.dart';
import 'package:fps/view/screens/items_list/items_list.dart';
import 'package:fps/view/screens/balance_caards/rationcard.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:fps/view/screens/screen%20_login/widgets/custom_textform.dart';
import 'package:fps/view/screens/screen_home/stock_items.dart';
import 'package:fps/view/screens/widgets/custom_appbar.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_radio/yes_or_no_button.dart';
import 'package:fps/view/screens/fps_owner_name/fps_owner_name.dart';
import 'package:fps/view/screens/widgets/double_tapp.dart';
import 'package:fps/view/screens/widgets/shadow_button.dart';
import 'package:fps/view/style/style.dart';
import 'package:fps/view/screens/sreen_survay/widgets/survey_back_button.dart';
import 'package:get/get.dart';

class QustionPage extends StatefulWidget {
  QustionPage({super.key});

  @override
  State<QustionPage> createState() => _QustionPageState();
}

class _QustionPageState extends State<QustionPage> {
  String? survayId = GetLocalStorage.getfpsId('sId');

  List<TextEditingController> cardNumberControllerList = [];

  List<CardList> cardNumberList = [];
  TextEditingController cardCountController = TextEditingController();

  final fomkey = GlobalKey<FormState>();

  int? cardCount;

  DateTime? lastpressed;

  final qustionContoller = QustionController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: CustomAppbar(height: 190.h),
      body: DoubleTapBackPress(
        lastpressed: lastpressed,
        widget: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: qustionContoller.pagecontroller,
          onPageChanged: qustionContoller.selectedIndex,
          itemCount: qustionsList.length,
          itemBuilder: (context, index) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Obx(() {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${qustionsList[index].number}",
                            style: numbeText,
                          ),
                          Container(
                            // color: yellow,
                            width: 70.w,
                            height: 35.h,
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
                                  '${qustionsList[index].number}/28',
                                  style: const TextStyle(
                                      color: yellow,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            qustionContoller.selectedIndex != 0
                                ? ""
                                : qustionsList[index].headaLine!,
                            style: welcomeText,
                          ),
                          qustionContoller.selectedIndex == 0
                              ? h15
                              : const SizedBox(
                                  height: 0,
                                ),
                        ],
                      ),
                      Container(
                        //color: yellow,
                        height: qustionsList[index].number == 28 ? 70.h : 210.h,
                        width: 280.w,
                        child: Text(
                          qustionContoller.tabTextIndexSelected.value == 0
                              ? qustionsList[index].text
                              : englishQustion[index],
                          maxLines: 7,
                          textAlign: TextAlign.center,
                          style: normalText,
                        ),
                      ),
                      qustionsList[index].number == 28
                          ? Container(
                              //  color: green,
                              height: 200.h,
                              width: 280.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.st,
                                  //   children: [
                                  CustoName(
                                    name: 'Number of cards',
                                    color: mainred,
                                  ),
                                  // SizedBox(
                                  //   height: 15.h,
                                  //   child: FlutterToggleTab(
                                  //     width: 20.w,
                                  //     borderRadius: 10.r,
                                  //     selectedBackgroundColors: const [
                                  //       mainred,
                                  //       mainred
                                  //     ],
                                  //     selectedIndex:
                                  //         qustionContoller.tabTextIndexSelected.value,
                                  //     selectedTextStyle: const TextStyle(
                                  //       color: bg,
                                  //     ),
                                  //     unSelectedTextStyle: const TextStyle(
                                  //       color: grey,
                                  //     ),
                                  //     labels: qustionContoller.listTextTabToggle,
                                  //     selectedLabelIndex: (index) {
                                  //       qustionContoller.tabTextIndexSelected.value =
                                  //           index;
                                  //     },
                                  //   ),
                                  // ),
                                  //   ],
                                  // ),
                                  h10,
                                  Form(
                                    key: fomkey,
                                    child: CustomFomField(
                                        controller: cardCountController,
                                        textinputType: TextInputType.number,
                                        validator: (value) {
                                          if (!RegExp(r'[0]').hasMatch(value)) {
                                            return "          Please enter a valid number";
                                          } else if (value!.length <= 2) {
                                          } else {
                                            return null;
                                          }
                                        },
                                        onChanged: (p0) {
                                          setState(() {
                                            cardCount = int.parse(
                                                cardCountController.text);
                                            cardNumberControllerList =
                                                List.generate(
                                                    cardCount!,
                                                    (index) =>
                                                        TextEditingController());
                                            cardNumberList = List.generate(
                                                cardCount!,
                                                (index) => CardList());
                                          });
                                          print("$cardNumberList ==23");
                                        },
                                        maxline: 1,
                                        titles: ""),
                                  ),
                                  h10,
                                  LimitedBox(
                                    maxHeight: 120.h,
                                    child: cardCount == null
                                        ? Container(
                                        //    color: yellow,
                                            width: 300.w,
                                            height: 420.h,
                                            child: const Center(
                                              child: Text(
                                                "No cards  available",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: grey),
                                              ),
                                            ))
                                        : ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: cardCount,
                                            itemBuilder: (context, index) {
                                              return Container(
                                              //  color: blue,
                                                width: 280.w,
                                                height: 510.h,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 10),
                                                      child: Row(
                                                        children: [
                                                          CustoName(
                                                            name: 'Card Number',
                                                            color: mainred,
                                                          ),
                                                          Container(
                                                            // color: green,
                                                            width: 160.w,
                                                          ),
                                                          //   w210,
                                                          //  Spacer(),
                                                          Text(
                                                            "${index + 1}/$cardCount",
                                                            style: const TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: mainred),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    h20,
                                                    //  Form(key: fomkeyList[index],
                                                    //  child:
                                                    CustomFomField(
                                                        controller:
                                                            cardNumberControllerList[
                                                                index],
                                                        textinputType:
                                                            TextInputType
                                                                .number,
                                                        validator: (value) {
                                                          String data =
                                                              Get.snackbar(
                                                                      'please',
                                                                      "message")
                                                                  .toString();
                                                          if (value!.length !=
                                                              10) {
                                                            return data;
                                                            //"            Enter valid number";
                                                          } else if (!RegExp(
                                                                  r'[0-9]')
                                                              .hasMatch(
                                                                  value)) {
                                                            return 'Please enter a valid number';
                                                          } else {
                                                            return null;
                                                          }
                                                        },
                                                        onChanged: (value) {
                                                          setState(() {
                                                            cardNumberList[
                                                                        index]
                                                                    .cardNumbers =
                                                                value;
                                                          });
                                                        },
                                                        maxline: 1,
                                                        titles: ""),
                                                    // ),
                                                    h10,

                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: const [
                                                            Icon(
                                                              Icons
                                                                  .arrow_back_ios,
                                                              color: mainred,
                                                            ),
                                                            Text(
                                                              "swipe",
                                                              style: TextStyle(
                                                                  color: grey),
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: const [
                                                            Text(
                                                              "swipe",
                                                              style: TextStyle(
                                                                  color: grey),
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                              color: mainred,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                  )
                                ],
                              ),
                            )

                          // Container(
                          //     color: blue,
                          //     height: 200.h,
                          //     width: 280.w,
                          //     child: RationCardNumbers())
                          : Container(
                              //  color: red,
                              height: 70.h,
                              child: YesOrNoButton(qustionIdex: index),
                            ),
                      // h25,
                      CustomShadowButton(
                          onTap: () {
                            bool isNull =
                                qustionsList[index].isSelectedYes != null;
                            int qustionId = qustionsList[index].number;
                            int qustionLength =
                                qustionContoller.selectedIndex.value;

                            if (qustionContoller.selectedIndex.value != 27) {
                              if (isNull) {
                                if (qustionContoller.selectedIndex.value !=
                                    27) {
                                  if (qustionContoller.selectedIndex.value <=
                                      25) {
                                    int answer =
                                        qustionsList[index].isSelectedYes!
                                            ? 1
                                            : 0;
                                    QustionAairSservice.qustionAirServce(
                                            answer: answer,
                                            questionId: qustionId,
                                            surveyId: int.parse(survayId!))
                                        .then((value) {
                                      if (value == "success") {
                                        qustionsList[index].isSubmited = true;
                                        if (answer == 0) {
                                          if (qustionLength == 0) {
                                            Get.offAll(CameraShop1(),
                                                transition:
                                                    Transition.noTransition,
                                                duration:
                                                    const Duration(seconds: 1));
                                          } else {
                                            qustionContoller.forwerdPageJumb();
                                          }
                                        } else {
                                          // if(answer ==1) {
                                          //   if (qustionLength ==0||qustionLength ==1||qustionLength==17) {
                                          // return showDialog(context: context, builder: (context) {
                                          //   return Container(color: red,height: 200,width: 250,);
                                          // },);

                                          //   }

                                          qustionContoller.forwerdPageJumb();
                                        }
                                      }
                                    });
                                  } else if (qustionLength == 26) {
                                    int answer =
                                        qustionsList[index].isSelectedYes!
                                            ? 1
                                            : 0;
                                    if (answer == 0) {
                                      Get.offAll(FpsOwnerName(),
                                          transition: Transition.noTransition,
                                          duration: const Duration(seconds: 1));
                                    } else {
                                      // Get.offAll(const RationCardNumbers(),
                                      //     transition: Transition.noTransition,
                                      //     duration: const Duration(seconds: 1));
                                      // Get.to(const RationCardNumbers());
                                      qustionContoller.forwerdPageJumb();
                                    }
                                  }
                                }
                              }
                            } else {
                              //  else  {
                              List<Map<String, dynamic>> allCardList =
                                  cardNumberList
                                      .map((e) => {
                                            "card_no": e.cardNumbers,
                                            "survey_id": survayId
                                          })
                                      .toList();
                              String? number;
                              if (cardCountController.text.isNotEmpty) {
                                for (var element in cardNumberList) {
                                  number = element.cardNumbers;
                                }
                                print(allCardList);
                                print(number);

                                if (number != null) {
                                  RationCardNumbersService.balanceCard(
                                    params: allCardList,
                                  ).then((value) {
                                    if (value == 'success') {
                                      Get.offAll(FpsOwnerName(),
                                          transition: Transition.noTransition,
                                          duration: const Duration(seconds: 1));
                                    } else {
                                      print('no data');
                                      Get.snackbar("Warning",
                                          "Please fill the all feilds",
                                          backgroundColor: yellow);
                                    }
                                  });
                                } else {
                                  TostClass.warningTost(context);
                                  Get.snackbar(
                                      "Warning", "Please fill the all feilds",
                                      backgroundColor: yellow);
                                }

                                /// for (var element in cardNumberList) {

                                // }

                                // } else {
                                //   TostClass.warningTost(context);
                                //  }
                              }
                            }
                          },
                          buttonColor: mainred,
                          height: 40.h,
                          width: double.infinity,
                          title: butenText(
                            title: "SUBMIT",
                            textColor: qustionsList[index].isSubmited == false
                                ? bg
                                : white.withOpacity(.5),
                          )),
                      h30,
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
                                },
                                width: 60.w,
                                height: 20.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.arrow_back_ios,
                                      color: white,
                                      size: 10.sp,
                                    ),
                                    const Text(
                                      'Back',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: white),
                                    ),
                                  ],
                                )),
                            FlutterToggleTab(
                              width: 20.w,
                              borderRadius: 10.r,
                              selectedBackgroundColors: const [
                                mainred,
                                mainred
                              ],
                              selectedIndex:
                                  qustionContoller.tabTextIndexSelected.value,
                              selectedTextStyle: const TextStyle(
                                color: bg,
                              ),
                              unSelectedTextStyle: const TextStyle(
                                color: grey,
                              ),
                              labels: qustionContoller.listTextTabToggle,
                              selectedLabelIndex: (index) {
                                qustionContoller.tabTextIndexSelected.value =
                                    index;
                              },
                            ),
                            SurvayBackButton(
                              bg: mainred,
                              onPressed: () {
                                qustionsList[index].isSubmited == false
                                    ? null
                                    : qustionContoller.pagecontroller.nextPage(
                                        duration: 550.milliseconds,
                                        curve: Curves.ease,
                                      );
                              },
                              width: 60.w,
                              height: 20.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Next',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: qustionsList[index].isSubmited ==
                                              false
                                          ? white.withOpacity(.5)
                                          : white,
                                    ),
                                  ),
                                  w5,
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color:
                                        qustionsList[index].isSubmited == false
                                            ? white.withOpacity(.5)
                                            : white,
                                    size: 10.sp,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
              ),
            );
          },
        ),
      ),
    );
  }
}
