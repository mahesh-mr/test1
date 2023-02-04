import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:fps/controller/controller/confirm_owner_controller/confirm_owner_controller.dart';
import 'package:fps/controller/controller/home_controller.dart/home_controller.dart';
import 'package:fps/controller/controller/surva_controll/survay_controll.dart';
import 'package:fps/controller/controller/survey_controller/position_controller.dart';
import 'package:fps/controller/controller/tost/tost.dart';
import 'package:fps/controller/service/accompaned_service/accompaned_service.dart';
import 'package:fps/controller/service/dioclint/token/token.dart';
import 'package:fps/controller/service/home_service/start_survay_survice/start_survay_service.dart';
import 'package:fps/model/dropdown_model/dropdow.dart';

import 'package:fps/view/screens/conform_screen/conform_details.dart';
import 'package:fps/view/screens/custon_routing_trasactions/custom_routhing_transations.dart';
import 'package:fps/view/screens/qution_air/page_view.dart';
import 'package:fps/view/screens/screen_home/stock_items.dart';
import 'package:fps/view/screens/sreen_survay/widgets/survey_back_button.dart';
import 'package:fps/view/screens/sreen_survay/widgets/survey_form_wiidget.dart';
import 'package:fps/view/screens/widgets/custom_dropdown.dart';
import 'package:fps/view/screens/widgets/popup_menu/popup_menu.dart';
import 'package:fps/view/screens/widgets/shadow_button.dart';
import 'package:fps/view/style/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';

class SurveyScreen extends StatefulWidget {
  SurveyScreen({super.key});

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  final fpsnumberController = TextEditingController();

  final nameController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  final positionController = Get.put(PositionController());

  final confirmOwner = Get.put(ConfirmController());

  List<InspectorModel> inspectersList = [];

//
  final survayData = GetStorage();

  final homecontroller = Get.find<HomeController>();

  String? userId = GetLocalStorage.getUserIdAndToken('id');

  //String? survayId = GetfpsStorage.getfpsId('id');
  String? fpsNumber;

  int? numsed;
  bool isLoding = false;
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
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: mainred,
            ),
          ),
          actions: [
            Popups(color: mainred),
          ],
        ),
        body: GetBuilder<PositionController>(
            dispose: (_) {
              positionController.positionValue = null;
              // homecontroller.fpsValue = null;
            },
            initState: (state) {},
            builder: (controller) {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      h20,
                      Text(
                        'Survey',
                        style: welcomeText,
                      ),
                      h20,
                      Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "FPS Number",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: grey3,
                                ),
                              ),
                            ),
                            h15,
                            CustomDropdown(
                                onpressed: (String? newValue) {
                                  print(
                                      "${positionController.fpsValue}====fps val 1");
                                  //  print("$userId====id orginal");
                                  //    homecontroller.talukvalues = null;
                                  positionController.dropdownPositionChange(
                                      newValue!, 'FPS Number');

                                  print("${newValue} =====fps===val");
                                  positionController.tempfpsNumberList
                                      .map((e) => print(e.firka));

                                  // homecontroller.tempTalukList = homecontroller.talukList
                                  //     .where((element) =>
                                  //         element.districtId.toString() ==
                                  //         homecontroller.districtValue.toString())
                                  //     .toList();
                                },
                                value: positionController.fpsValue,
                                items: positionController.tempfpsNumberList
                                    .map((e) {
                                  return DropdownMenuItem(
                                    value: e.fpsNo.toString(),
                                    child: Text(e.fpsNo.toString()),
                                  );
                                }).toList(),
                                hint: 'FPS Number'),
                            h15,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Date of Last Inspection',
                                  style: TextStyle(
                                    color: grey3,
                                  ),
                                ),
                                h10,
                                Obx(() {
                                  String formateDate = DateFormat("dd-MM-yyyy")
                                      .format(positionController
                                          .lastInspectonDates.value)
                                      .toString();

                                  return GestureDetector(
                                    onTap: () {
                                      positionController
                                          .choseLastInspectionDate();
                                    },
                                    child: ClayContainer(
                                      color: white,
                                      borderRadius: 50.r,
                                      depth: 40,
                                      parentColor: white,
                                      spread: 2,
                                      child: Container(
                                        height: 45.w,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40.r),
                                            color: white,
                                            border:
                                                Border.all(color: lightgrey)),
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 15.h),
                                          child: Text(
                                            formateDate,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: lightblack),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ],
                            ),
                            h15,
                            CustomSurveyTextForm(
                              suffix: "",
                              onChanged: (p0) {},
                              controller: nameController,
                              textinputType: TextInputType.text,
                              title: "Name of Previous Inspector",
                              validator: (value) {
                                if (value!.length == 0) {
                                  return "          Enter your name";
                                } else if (!RegExp(r'(^[a-z A-Z]+$)')
                                    .hasMatch(value)) {
                                  return '          Please enter a valid name';
                                } else {
                                  return null;
                                }
                              },
                            ),
                            h15,
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Position of Previous Inspector",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: grey3,
                                ),
                              ),
                            ),
                            h15,
                            positionController.positinList.isEmpty
                                ? Container(
                                    height: 40,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50.r)),
                                            child: Center(child: Text("data is empty"),),
                                  )
                                : CustomDropdown(
                                    onpressed: (String? newValue) {
                                      positionController.dropdownPositionChange(
                                          newValue!, 'POSITION');
                                      print("${newValue} =====position");
                                    },
                                    value: positionController.positionValue,
                                    items:
                                        positionController.positinList.map((e) {
                                      return DropdownMenuItem(
                                          value: e.id.toString(),
                                          child: Text(e.role!));
                                    }).toList(),
                                    hint: 'POSITION'),
                            h15,
                          ],
                        ),
                      ),
                      h25,
                      Row(
                        children: [
                          Obx(() {
                            return Switch(
                              activeColor: mainred,
                              value: positionController.switchValue.value,
                              onChanged: (value) {
                                String? name;
                                String? role;
                                for (var element in inspectersList) {
                                  name = element.name;
                                  role = element.role_id;
                                }

                                if (name != null && role != null) {
                                  positionController.switchValue.value = true;
                                }
                                positionController.switchValue.value = false;
                                Get.to(StoreItems());
                              },
                            );
                          }),
                          const Text(
                            'Is it an accompanied inspection?',
                            style: TextStyle(color: grey),
                          ),
                        ],
                      ),
                      h35,
                      CustomShadowButton(
                          onTap: isLoding
                              ? null
                              : () async {
                                  print("${numsed}=====    num");
                                  var dateFormat = DateFormat(
                                          "yyyy-MM-dd hh:mm:ss")
                                      .format(
                                          controller.lastInspectonDates.value)
                                      .toString();
                                  String dates = DateFormat(
                                          "yyyy-MM-dd hh:mm:ss")
                                      .format(homecontroller.selectedDate.value)
                                      .toString();

                                  bool isValid =
                                      formKey.currentState!.validate();

                                  if (isValid) {
                                    if (controller.positionValue != null &&
                                        controller.fpsValue != null) {
                                      setState(() {
                                        isLoding = true;
                                      });
                                      await Future.delayed(
                                          Duration(seconds: 1));

                                      setState(() {
                                        isLoding = false;
                                      });

                                      String cdate =
                                          DateFormat("yyyy-MM-dd hh:mm:ss")
                                              .format(DateTime.now());

                                      String dates = DateFormat(
                                              "yyyy-MM-dd hh:mm:ss")
                                          .format(
                                              homecontroller.selectedDate.value)
                                          .toString();

                                      StartSurvay.startSuvey(
                                              district: homecontroller
                                                  .districtValue
                                                  .toString(),
                                              taluk: homecontroller.talukvalues
                                                  .toString(),
                                              firka: homecontroller.firkaValue
                                                  .toString(),
                                              inspection_date: dates,
                                              user_id: userId!,
                                              fps_no: positionController
                                                  .fpsValue
                                                  .toString(),
                                              previous_inspector_name:
                                                  nameController.text,
                                              last_inspection_date: cdate,
                                              previous_inspector_position:
                                                  positionController
                                                      .positionValue
                                                      .toString(),
                                              context: context)
                                          .then((value) {
                                        if (value == "success") {
                                          confirmOwner.getConfirmService().then(
                                              (value) => confirmOwner
                                                  .confirmModel = value!);
                                          print(
                                              "${survayData.read('pName')}==name");
                                          print("${userId}==uid");
                                          print("${dates}==tal");
                                          print("${dateFormat}==tal");
                                          print(survayData.read('pName'));
                                          String? name;
                                          String? role;
                                          String? survayId =
                                              GetLocalStorage.getfpsId('sId');
                                          String? fpsNo =
                                              GetLocalStorage.getfpsId(
                                                  'fps_no');
                                          print("${fpsNo}==fpsNo");
                                          List list = [];
                                          List<dynamic>? inspecters =
                                              survayData.read('inspectersList');
                                          //     var data = inspecters == null ? list : inspecters;
                                          var data = inspecters ?? list;
                                          for (var element in data) {
                                            name = element.name;
                                            role = element.role_id;
                                          }

                                          if (name != null && role != null) {
                                            List<Map<String, dynamic>>
                                                acompampanaidList = data
                                                    .map((e) => {
                                                          "name": e.name,
                                                          "role_id": e.role_id,
                                                          "survey_id": survayId
                                                        })
                                                    .toList();
                                            print(inspecters);
                                            print(
                                                "${acompampanaidList}=====================");
                                            AccompaniedSurvey
                                                    .accompaniedSurvice(
                                                        params:
                                                            acompampanaidList)
                                                .then(
                                              (value) {
                                                if (value == 'success') {
                                                  Get.to(ConformDetails());

                                                  survayData
                                                      .remove('inspectersList');
                                                } else {
                                                  TostClass.warningTost(
                                                      context);
                                                }
                                              },
                                            );
                                          } else {
                                            print("no accompaned ====");
                                            Get.to(ConformDetails());
                                            survayData.remove('inspectersList');

                                            survayData.remove('pName');
                                          }
                                        }
                                      });

                                      //
                                    } else {
                                      if (positionController.fpsValue == null) {
                                        Get.snackbar("Warnings",
                                            "Please select the fps Number",
                                            backgroundColor: yellow);
                                      } else {
                                        Get.snackbar("Warnings",
                                            "Please select the position",
                                            backgroundColor: yellow);
                                      }
                                    }
                                  }
                                },
                          // },
                          buttonColor: mainred,
                          height: 40.h,
                          width: double.infinity,
                          title: isLoding
                              ? CircularProgressIndicator(
                                  color: yellow,
                                )
                              : butenText(title: 'SUBMIT', textColor: bg)),
                      h50,
                    ],
                  ),
                ),
              );
            }));
  }
}
