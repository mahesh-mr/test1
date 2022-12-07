import 'package:flutter/material.dart';
import 'package:fps/controller/controller/home_controller.dart/home_controller.dart';
import 'package:fps/view/screens/screen_home/stock_items.dart';
import 'package:fps/view/screens/screen_home/widgets/botomfom.dart';
import 'package:fps/view/screens/screen_home/widgets/maxlength_widgets.dart';
import 'package:fps/view/screens/screen_register/widgets/custombutton.dart';
import 'package:fps/view/screens/sreen_survay/survay_screen.dart';
import 'package:fps/view/screens/widgets/custom_dropdown.dart';
import 'package:fps/view/screens/widgets/custom_popupmenu.dart';
import 'package:fps/view/screens/widgets/shadow_button.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final homecontroller = Get.put(HomeController());
bool _switchValue = false;

class _HomeScreenState extends State<HomeScreen> {
  List<String> talukItems = [
    'TALUK',
    'TALUK 1',
    'TALUK 2',
    'TALUK 3',
    'TALUK 4',
    'TALUK 5',
    'TALUK 6'
  ];
  String talukvalues = 'TALUK';

  var districtItems = [
    'DISTRICT',
    'DISTRICT 1',
    'DISTRICT 2',
    'DISTRICT 3',
    'DISTRICT 4',
    'DISTRICT 5',
    'DISTRICT 6'
  ];
  String districtValue = 'DISTRICT';
  var firkaitems = [
    'FIRKA',
    'FIRKA 1',
    'FIRKA 2',
    'FIRKA 3',
    'FIRKA 4',
    'FIRKA 5',
    'FIRKA 6'
  ];
  String firkaValue = 'FIRKA';

  final number = TextEditingController();
  final positions = TextEditingController();
  final inspectorname = TextEditingController();

  bool isVisble = true;

  @override
  Widget build(BuildContext context) {
    final HomeController homecontroller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: bg,
        title: Text(
          "CIVIL SUPPLIES",
          style: appText,
        ),
        actions: [
          PopupmenuButtonWidgets(color: mainred),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 100.h,
                    width: 200.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 100.h,
                          width: 130.w,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/6.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 25.h,
                    left: 15.w,
                    child: Text(
                      "Start\nSurvey",
                      style: welcomeText,
                    ),
                  )
                ],
              ),
              h10,
              const Text(
                "Survey For Inspections Of\nRation Shops Across Kerala",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, color: grey),
              ),
              h20,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.h),
                child: Column(
                  children: [
                    buttons(),
                    h15,
                    district(),
                    h15,
                    taluk(),
                    h15,
                    firka(),
                    h20,
                    bottomSheet(context),
                    h20,
                    ShadowButton(
                      title: 'Start Survey',
                      buttonColor: mainred,
                      height: 40.h,
                      width: double.infinity,
                      textColor: bg,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SurveyScreen(),
                            ));
                        // Get.to(
                        //   SurveyScreen(),
                        // );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//TALUK=======================================

  CustomDropdown taluk() {
    return CustomDropdown(
      onpressed: (String? newValue) {
        setState(() {
          talukvalues = newValue!;
        });
      },
      value: talukvalues,
      items: talukItems.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
    );
  }

//DISTRIC==================================================
  CustomDropdown district() {
    return CustomDropdown(
      value: districtValue,
      items: districtItems.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      onpressed: (String? newValue) {
        setState(() {
          districtValue = newValue!;
        });
      },
    );
  }

//FIRKA=======================================================

  CustomDropdown firka() {
    return CustomDropdown(
      onpressed: (String? newValue) {
        setState(() {
          firkaValue = newValue!;
        });
      },
      value: firkaValue,
      items: firkaitems.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
    );
  }

  Row bottomSheet(BuildContext context) {
    return Row(
      children: [
        Switch(
          activeColor: mainred,
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
            });
            if (_switchValue == true) {
              Get.to(StoreItems());
              // showModalBottomSheet(
              //   isScrollControlled: true,
              //   backgroundColor: mainred,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.only(
              //       topLeft: Radius.circular(60.r),
              //       topRight: Radius.circular(60.r),
              //     ),
              //   ),
              //   context: context,
              //   builder: (context) {
              //     return SizedBox(
              //       width: double.infinity,
              //       //   height: 550.h,
              //       child: Padding(
              //         padding: EdgeInsets.symmetric(horizontal: 30.w),
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           children: [
              //             Padding(
              //               padding: EdgeInsets.only(top: 50.h),
              //               child: Text(
              //                 'Accompanied\nSurvey',
              //                 style: bottomtext,
              //                 textAlign: TextAlign.center,
              //               ),
              //             ),
              //             h25,
              //             SingleChildScrollView(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   const Text(
              //                     'Number of Accompanied Persons',
              //                     style: TextStyle(
              //                         fontWeight: FontWeight.bold,
              //                         color: white),
              //                   ),
              //                   h15,
              //                   MaxlengthTextFormWidget(
              //                     controller: number,
              //                     counterColor: bg,
              //                     textinputType: TextInputType.number,
              //                     validator: (value) {},
              //                     borderColor: bg,
              //                     filledColor: bg,
              //                   ),
              //                   // BotosheetForm(
              //                   //   controller: number,
              //                   //   textinputType: TextInputType.number,
              //                   //   validator: (value) {},
              //                   // ),
              //                   h15,
              //                   const Text(
              //                     'Inspector Name',
              //                     style: TextStyle(
              //                         fontWeight: FontWeight.bold,
              //                         color: white),
              //                   ),
              //                   h15,
              //                   // ignore: null_check_always_fails
              //                   BotosheetForm(
              //                     controller: inspectorname,
              //                     textinputType: TextInputType.name,
              //                     validator: (value) {},
              //                   ),
              //                   h15,
              //                   const Text(
              //                     'Position',
              //                     style: TextStyle(
              //                         fontWeight: FontWeight.bold,
              //                         color: white),
              //                   ),
              //                   h15,
              //                   BotosheetForm(
              //                     controller: positions,
              //                     textinputType: TextInputType.text,
              //                     validator: (value) {},
              //                   ),
              //                   h15,
                             
              //                      TextButton(
              //                         onPressed: () {
              //                           // homecontroller.isVisible.value =
              //                           //     !homecontroller.isVisible.value;
              //                           setState(() {
              //                             isVisble =!isVisble;
              //                           });
              //                         },
              //                         child: const Text(
              //                           'Others',
              //                           style: TextStyle(
              //                               fontWeight: FontWeight.bold,
              //                               color: white),
              //                         ),
              //                       ),
                                 

              //                   h15, h15, h15,
              //                   Visibility(
              //                     visible: isVisble,
              //                     child: BotosheetForm(
              //                       controller: inspectorname,
              //                       textinputType: TextInputType.name,
              //                       validator: (value) {},
              //                     ),
              //                   ),
              //                   //       Visibility(visible: isVisble, child:  BotosheetForm(
              //                   //   controller: inspectorname,
              //                   //   textinputType: TextInputType.name,
              //                   //   validator: (value) {},
              //                   // ),),
              //                   //        Column(
              //                   //         children: [
              //                   //              BotosheetForm(
              //                   //   controller: inspectorname,
              //                   //   textinputType: TextInputType.name,
              //                   //   validator: (value) {},
              //                   // ),
              //                   // h15,
              //                   //    BotosheetForm(
              //                   //   controller: inspectorname,
              //                   //   textinputType: TextInputType.name,
              //                   //   validator: (value) {},
              //                   // ),
              //                   // h15,
              //                   //    BotosheetForm(
              //                   //   controller: inspectorname,
              //                   //   textinputType: TextInputType.name,
              //                   //   validator: (value) {},
              //                   // ),
              //                   // h15,
              //                   //    BotosheetForm(
              //                   //   controller: inspectorname,
              //                   //   textinputType: TextInputType.name,
              //                   //   validator: (value) {},
              //                   // ),
              //                   // h15,
              //                   //    BotosheetForm(
              //                   //   controller: inspectorname,
              //                   //   textinputType: TextInputType.name,
              //                   //   validator: (value) {},
              //                   // ),
              //                   // h15,
              //                   //    BotosheetForm(
              //                   //   controller: inspectorname,
              //                   //   textinputType: TextInputType.name,
              //                   //   validator: (value) {},
              //                   // ),
              //                   // h15,
              //                   //    BotosheetForm(
              //                   //   controller: inspectorname,
              //                   //   textinputType: TextInputType.name,
              //                   //   validator: (value) {},
              //                   // ),
              //                   // h15,

              //                   //         ],
              //                   //       )),

              //                   // ShadowButton(onTap: () {

              //                   // }, buttonColor: bg, height: 40.r, textColor: mainred, width: double.infinity, title:  "SUBMIT",)
              //                   CustomButton(
              //                     onPressed: () {},
              //                     title: "SUBMIT",
              //                     btncolor: white,
              //                     textColor: mainred,
              //                   )
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     );
              //   },
              // );
            }
          },
        ),
//txt=================================================================
//==============================================================================
        const Text(
          'Is it an accompanied inspected?.',
          style: TextStyle(color: grey),
        ),
      ],
    );
  }

//buttons=========================================================================
//================================================================================
  Row buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Inspection Date : ",
          style: TextStyle(fontWeight: FontWeight.w600, color: grey),
        ),
        w10,
        Obx(() {
          return ShadowButton(
              onTap: () {
                homecontroller.choseDate();
              },
              buttonColor: mainred,
              height: 23.h,
              textColor: bg,
              width: 150.w,
              title: DateFormat("dd-MM-yyyy")
                  .format(homecontroller.selectedDate.value)
                  .toString());
          //   SmallButtons(
          //     backgroundColor: mainred,
          //     height: 23.h,
          //     textColor: white,
          //     width: 150.w,
          //     text: Text(DateFormat("dd-MM-yyyy")
          //         .format(homecontroller.selectedDate.value)
          //         .toString()),
          //     onPressed: () {

          //     },

          // );
        }),
      ],
    );
  }
}
