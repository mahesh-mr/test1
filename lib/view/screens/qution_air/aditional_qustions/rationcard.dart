import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/controller/controller/qustion_pagae_controller/qustion_controller.dart';
import 'package:fps/controller/controller/tost/tost.dart';
import 'package:fps/controller/service/dioclint/token/token.dart';
import 'package:fps/controller/service/qustion_air_service/dational_qustio_service/aditional_qustion_service.dart';
import 'package:fps/model/balace_card_model.dart';
import 'package:fps/view/screens/items_list/items_list.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:fps/view/screens/screen%20_login/widgets/custom_textform.dart';
import 'package:fps/view/screens/screen_home/stock_items.dart';
import 'package:fps/view/screens/fps_owner_name/fps_owner_name.dart';
import 'package:fps/view/screens/widgets/shadow_button.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';

class RationCardNumbers extends StatefulWidget {
  const RationCardNumbers({super.key});

  @override
  State<RationCardNumbers> createState() => _RationCardNumbersState();
}

class _RationCardNumbersState extends State<RationCardNumbers> {
  TextEditingController cardCountController = TextEditingController();

  List<TextEditingController> cardNumberControllerList = [];
  List<CardList> cardNumberList = [];

  int? cardCount;
  String? survayId = GetLocalStorage.getfpsId('sId');
  final fomkey = GlobalKey<FormState>();
  List<GlobalKey> fomkeyList = [];
  @override
  Widget build(BuildContext context) {
    // List<Map<String, dynamic>> allCardList = cardNumberList
    //     .map((e) => {"card_no": e.cardNumbers, "survey_id": survayId})
    //     .toList();

    //  final qustionContoller = QustionController();
    return Scaffold(
      appBar: CustomAppbar(height: 220.h),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            children: [
              progressBarAndCount(),
              h10,
              qustion(),
              Container(
                //   color: green,
                height: 230.h,
                width: 280.w,

                child: Column(
                  children: [
                    CustoName(
                      name: 'Number of cards',
                      color: mainred,
                    ),
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
                              cardCount = int.parse(cardCountController.text);
                              cardNumberControllerList = List.generate(
                                  cardCount!,
                                  (index) => TextEditingController());
                              cardNumberList = List.generate(
                                  cardCount!, (index) => CardList());
                            });
                            print("$cardNumberList ==23");
                          },
                          maxline: 1,
                          titles: ""),
                    ),
                    h20,
                    LimitedBox(
                      maxHeight: 100.h,
                      child: cardCount == null
                          ? Container(
                              //  color: yellow,
                              width: 300.w,
                              height: 420.h,
                              child: const Center(
                                child: Text(
                                  "No cards  available",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, color: grey),
                                ),
                              ))
                          : ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: cardCount,
                              itemBuilder: (context, index) {
                                return Container(
                                  //   color: blue,
                                  width: 280.w,
                                  height: 420.h,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
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
                                                  fontWeight: FontWeight.bold,
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
                                              cardNumberControllerList[index],
                                          textinputType: TextInputType.number,
                                          validator: (value) {
                                            String data = Get.snackbar(
                                                    'please', "message")
                                                .toString();
                                            if (value!.length != 10) {
                                              return data;
                                              //"            Enter valid number";
                                            } else if (!RegExp(r'[0-9]')
                                                .hasMatch(value)) {
                                              return 'Please enter a valid number';
                                            } else {
                                              return null;
                                            }
                                          },
                                          onChanged: (value) {
                                            setState(() {
                                              cardNumberList[index]
                                                  .cardNumbers = value;
                                            });
                                          },
                                          maxline: 1,
                                          titles: ""),
                                      // ),
                                      h50,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.arrow_back_ios,
                                                color: mainred,
                                              ),
                                              Text(
                                                "swipe",
                                                style: TextStyle(color: grey),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Text(
                                                "swipe",
                                                style: TextStyle(color: grey),
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios,
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
              ),
              h30,
              CustomShadowButton(
                  onTap: () {
                    print("$survayId======idf");
                    List<Map<String, dynamic>> allCardList = cardNumberList
                        .map((e) =>
                            {"card_no": e.cardNumbers, "survey_id": survayId})
                        .toList();
                    String? number;

                    if (cardCountController.text.isNotEmpty) {
                      for (var element in cardNumberList) {
                        number = element.cardNumbers;
                      }
                      print(allCardList);

                      if (number != null) {
                        RationCardNumbersService.balanceCard(
                          params: allCardList,
                        ).then((value) {
                          if (value == 'success') {
                            Get.offAll(FpsOwnerName());
                          } else {
                            print('no data');
                            Get.snackbar(
                                "Warning", "Please fill the all feilds",
                                backgroundColor: yellow);
                          }
                        });
                      } else {
                        TostClass.warningTost(context);
                        // Get.snackbar(
                        //         "Warning", "Please fill the all feilds",
                        //         backgroundColor: yellow);
                        //  }
                        

                      }

                      /// for (var element in cardNumberList) {

                      // }

                    } else {
                      TostClass.warningTost(context);
                    }

                    // for (var element in cardNumberList) {
                    //   var list1 = element.cardNumbers;
                    //   print(list1);
                    //   print("${allCardList}===1");
                    //   print("${cardNumberList}===2");
                    // }
                    // Get.to(ItemsListHome());
                  },
                  buttonColor: mainred,
                  height: 40.h,
                  width: double.infinity,
                  title: butenText(title: "SUBMIT", textColor: bg)),
            ],
          ),
        ),
      ),
    );
  }

  Container qustion() {
    return Container(
      height: 70.h,
      width: double.infinity,
      //color: yellow,
      child: Text(
        "ഉണ്ടെങ്കിൽ എത്ര കാർഡുകൾ ? ( കാർഡ് നമ്പരുകൾ രേഖപ്പെടുത്തുക )",
        // qustionsList[24].text,
        maxLines: 7,
        textAlign: TextAlign.center,
        style: normalText,
      ),
    );
  }

  Row progressBarAndCount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '25',
          style: numbeText,
        ),
        SizedBox(
          width: 70.w,
          height: 50.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LinearProgressIndicator(
                backgroundColor: black,
                value: 25,
                color: yellow,
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                '25/25',
                style: TextStyle(color: yellow, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }
}
