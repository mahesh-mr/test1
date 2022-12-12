import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:fps/controller/controller/home_controller.dart/home_controller.dart';
import 'package:fps/view/screens/screen_home/stock_items.dart';
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

  // var districtItems = [
  //   'DISTRICT',
  //   'DISTRICT 1',
  //   'DISTRICT 2',
  //   'DISTRICT 3',
  //   'DISTRICT 4',
  //   'DISTRICT 5',
  //   'DISTRICT 6'
  // ];
  // String districtValue = 'DISTRICT';
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
  final HomeController homecontroller = Get.put(HomeController());
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
          PopupmenuButtonWidgets(color: mainred),
        ],
      ),
      body: GetBuilder<HomeController>(builder: (controller) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      //      color: blue,

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
                      h20,
                      district(controller),
                      h20,
                      taluk(controller),
                      h20,
                      firka(controller),
                      h20,
                      bottomSheet(context),
                      h30,
                      CustomShadowButton(
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
        );
      }),
    );
  }

  ClayContainer firka(HomeController controller) {
    return ClayContainer(
      color: white,
      borderRadius: 50.r,
      depth: 40,
      parentColor: white,
      spread: 6,
      curveType: CurveType.none,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            hint: Text('FIRKA'),
            elevation: 6,
            borderRadius: BorderRadius.circular(20),
            alignment: AlignmentDirectional.center,
            style: TextStyle(fontWeight: FontWeight.w600, color: grey),
            value: controller.firkaValue,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: List.generate(
              controller.firkaitems.length,
              (index) => DropdownMenuItem(
                value: controller.firkaitems[index],
                child: Text(
                  controller.firkaitems[index],
                ),
              ),
            ),
            onChanged: (String? newValue) {
              controller.dropdownValueChanging(newValue!, 'FIRKA');
            },
          ),
        ),
      ),
    );
  }

  ClayContainer taluk(HomeController controller) {
    return ClayContainer(
      color: white,
      borderRadius: 50.r,
      depth: 40,
      parentColor: white,
      spread: 6,
      curveType: CurveType.none,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            hint: Text('TALUK'),
            elevation: 6,
            borderRadius: BorderRadius.circular(20),
            alignment: AlignmentDirectional.center,
            style: TextStyle(fontWeight: FontWeight.w600, color: grey),
            value: controller.talukvalues,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: List.generate(
              controller.talukItems.length,
              (index) => DropdownMenuItem(
                value: controller.talukItems[index],
                child: Text(
                  controller.talukItems[index],
                ),
              ),
            ),
            onChanged: (String? newValue) {
              controller.dropdownValueChanging(newValue!, 'TALUK');
            },
          ),
        ),
      ),
    );
  }

  ClayContainer district(HomeController controller) {
    return ClayContainer(
      color: white,
      borderRadius: 50.r,
      depth: 40,
      parentColor: white,
      spread: 6,
      curveType: CurveType.none,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            hint: Text('DISTRICT'),
            elevation: 6,
            borderRadius: BorderRadius.circular(20),
            alignment: AlignmentDirectional.center,
            style: TextStyle(fontWeight: FontWeight.w600, color: grey),
            value: controller.districtValue,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: List.generate(
              controller.districtItems.length,
              (index) => DropdownMenuItem(
                value: controller.districtItems[index],
                child: Text(
                  controller.districtItems[index],
                ),
              ),
            ),
            onChanged: (String? newValue) {
              controller.dropdownValueChanging(newValue!, 'DISTRICT');
            },
          ),
        ),
      ),
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
        const Text(
          "Inspection Date : ",
          style: TextStyle(fontWeight: FontWeight.w600, color: grey),
        ),
        w10,
        Obx(
          () {
            return CustomShadowButton(
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
          },
        ),
      ],
    );
  }
}
