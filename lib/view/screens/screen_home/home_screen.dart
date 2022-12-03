import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:fps/controller/controller/home_controller.dart/home_controller.dart';
import 'package:fps/view/screens/screen_home/widgets/botomfom.dart';
import 'package:fps/view/screens/screen_home/widgets/small_button.dart';
import 'package:fps/view/screens/screen_register/widgets/custombutton.dart';
import 'package:fps/view/screens/sreen_survay/survay_screen.dart';
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
    'Taluk 1',
    'Taluk 2',
    'Taluk 3',
    'Taluk 4',
    'Taluk 5',
    'Taluk 6'
  ];
  String talukvalues = 'TALUK';

  var districtItems = [
    'DISTRICT',
    'District 1',
    'District 2',
    'District 3',
    'District 4',
    'District 5',
    'District 6'
  ];
  String districtValue = 'DISTRICT';
  var firkaitems = [
    'FIRKA',
    'Firka 1',
    'Firka 2',
    'Firka 3',
    'Firka 4',
    'Firka 5',
    'Firka 6'
  ];
  String firkaValue = 'FIRKA';

  final number = TextEditingController();
  final positions = TextEditingController();
  final inspectorname = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: mainred,
            ),
          ),
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
                    thaluk(),
                    h15,
                    firka(),
                    h20,
                    bottomSheet(context),
                    h20,
                    CustomButton(
                      onPressed: () {
                        Get.to(
                          SurveyScreen(),
                        );
                      },
                      title: "Start Survey",
                      btncolor: mainred,
                      textColor: white,
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

//district====================================================================
//=============================================================================
  ClayContainer district() {
    return ClayContainer(
      color: white,
      borderRadius: 50.r,
      depth: 40,
      parentColor: white,
      spread: 2,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            alignment: AlignmentDirectional.center,
            style: TextStyle(fontWeight: FontWeight.w600, color: grey),
            // hint: Text('DISTRICT',style: TextStyle(fontWeight: FontWeight.w600,color: grey),),
            value: districtValue,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: districtItems.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                districtValue = newValue!;
              });
            },
          ),
        ),
      ),
    );
  }

//taluk================================================================================
//====================================================================================
  ClayContainer thaluk() {
    return ClayContainer(
      color: white,
      borderRadius: 50.r,
      depth: 40,
      parentColor: white,
      spread: 2,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            alignment: AlignmentDirectional.center,
            style: TextStyle(fontWeight: FontWeight.w600, color: grey),
            value: talukvalues,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: talukItems.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                talukvalues = newValue!;
              });
            },
          ),
        ),
      ),
    );
  }

//firka==========================================================================
//===========================================================================
  ClayContainer firka() {
    return ClayContainer(
      color: white,
      borderRadius: 50.r,
      depth: 40,
      parentColor: white,
      spread: 2,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            alignment: AlignmentDirectional.center,
            style: TextStyle(fontWeight: FontWeight.w600, color: grey),
            value: firkaValue,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: firkaitems.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                firkaValue = newValue!;
              });
            },
          ),
        ),
      ),
    );
  }

//bottomsheet==================================================================
//=============================================================================
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
              showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: mainred,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.r),
                    topRight: Radius.circular(60.r),
                  ),
                ),
                context: context,
                builder: (context) {
                  return SizedBox(
                    width: double.infinity,
                    height: 550.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 50.h),
                            child: Text(
                              'Accompanied\nSurvey',
                              style: bottomtext,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          h25,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Number of Accompanied Persons',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, color: white),
                              ),
                              h15,
                              numberFeild(),
                              // BotosheetForm(
                              //   controller: number,
                              //   textinputType: TextInputType.number,
                              //   validator: (value) {},
                              // ),
                              h15,
                              const Text(
                                'Inspector Name',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, color: white),
                              ),
                              h15,
                              BotosheetForm(
                                controller: inspectorname,
                                textinputType: TextInputType.name,
                                validator: (value) {},
                              ),
                              h15,
                              const Text(
                                'Position',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, color: white),
                              ),
                              h15,
                              BotosheetForm(
                                controller: positions,
                                textinputType: TextInputType.text,
                                validator: (value) {},
                              ),
                              h50,
                              CustomButton(
                                onPressed: () {},
                                title: "SUBMIT",
                                btncolor: white,
                                textColor: mainred,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
//txt=================================================================
//==============================================================================
        const Text(
          'Is It An Accompanied Inspected ?',
          style: TextStyle(color: grey),
        ),
      ],
    );
  }

  TextFormField numberFeild() {
    return TextFormField(
      maxLength: 7,
      keyboardType: TextInputType.number,
      controller: number,
      validator: (value) {},
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.r),
              borderSide: const BorderSide(color: bg)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.r),
            borderSide: const BorderSide(color: bg),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.r),
            borderSide: const BorderSide(color: red),
          ),
          fillColor: bg,
          focusColor: bg,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.r),
          )),
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
          return SmallButtons(
            backgroundColor: mainred,
            height: 23.h,
            textColor: white,
            width: 150.w,
            text: Text(DateFormat("dd-MM-yyyy")
                .format(homecontroller.selectedDate.value)
                .toString()),
            onPressed: () {
              homecontroller.choseDate();
            },
          );
        }),
      ],
    );
  }
}
