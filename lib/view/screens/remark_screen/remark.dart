import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/controller/controller/home_controller.dart/home_controller.dart';
import 'package:fps/controller/controller/qustion_pagae_controller/qustion_controller.dart';
import 'package:fps/controller/controller/remark_controller/remark.dart';
import 'package:fps/controller/controller/survey_controller/position_controller.dart';
import 'package:fps/controller/service/dioclint/token/token.dart';
import 'package:fps/controller/service/remark_service/remark_service.dart';
import 'package:fps/model/qustion_model.dart';
import 'package:fps/view/screens/navebar_screen/navbar.dart';
import 'package:fps/view/screens/qution_air/list_qustions/withness_screen/appbar/witness_appbar.dart';
import 'package:fps/view/screens/widgets/shadow_button.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';

class RemarkScreeen extends StatefulWidget {
  RemarkScreeen({super.key});

  @override
  State<RemarkScreeen> createState() => _RemarkScreeenState();
}

class _RemarkScreeenState extends State<RemarkScreeen> {
  final RemarkController remarkContoller = Get.put(RemarkController());

  final HomeController homecontroller = Get.put(HomeController());
  final storageController = Get.put(GetLocalStorage());
  final remarkController = TextEditingController();
  final positionController = Get.put(PositionController());

  final fomkey = GlobalKey<FormState>();

  String? survayId = GetLocalStorage.getfpsId('id');
  bool isLoding=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WitnessAppbar(text: 'Check Register', subText: ''),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            children: [
              Text(
                'Remarks',
                style: fontZ_30_black,
              ),
              h30,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  h25,
                  Text(
                    ' Leave your comments below',
                    style: fontZ_14_Grey,
                  ),
                  h15,
                  Form(key: fomkey, child: textfom()),
                  h65,
                  CustomShadowButton(
                      onTap:isLoding?null: ()async {
                          setState(() {
                            isLoding=true;
                          });await Future.delayed(Duration(seconds: 1));

                          setState(() {
                            isLoding=false;
                          });
                        //  bool isValid = fomkey.currentState!.validate();

                        //  if (isValid) {
                        RemarkService.remarkService(
                                surveyId: survayId!,
                                remarks: remarkController.text.isEmpty
                                    ? ""
                                    : remarkController.text)
                            .then((value) {
                          if (value == "success") {
                            positionController.switchValue.value = false;
                            Future.delayed(Duration(milliseconds: 30)).then(
                                (value) =>
                                    storageController.removeUserremovedSId());
                            qustionsList = qustionsList
                                .map((e) => QustionModel(
                                    text: e.text,
                                    headaLine: e.headaLine,
                                    bar: e.bar,
                                    number: e.number))
                                .toList();
                                //Images for survey completed

                            Get.snackbar("Success", "Survey Completed",
                                backgroundColor: green);
                            Future.delayed(Duration(seconds: 1))
                                .then((value) => Get.offAll(NavBarScreen()));

                            print("$survayId ===");
                          }
                        });
                      },
                      buttonColor: mainred,
                      height: 45.h,
                      width: double.infinity,
                        title:isLoding?CircularProgressIndicator(color: yellow,):  butenText(title: 'Submit', textColor: bg),)
                ],
              ),

              // CustomTextForm(
              //   controller: remarkController,
              //   maxline: 10,
              //   textinputType: TextInputType.text,
              //   title: '',
              //   validator: (value) {},
              // ),
            ],
          ),
        ),
      ),
    );
  }

  ClayContainer textfom() {
    return ClayContainer(
      color: white,
      borderRadius: 20.r,
      depth: 40,
      parentColor: white,
      spread: 2,
      child: TextFormField(
        maxLines: 10,
        controller: remarkController,
        validator: (value) {
          // if (value!.length == 0) {
          //   return "      length shuld be 1 chareter";
          // }
        },
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.w),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: const BorderSide(color: lightgrey)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: const BorderSide(color: lightgrey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: const BorderSide(color: red),
          ),
          hintText: '',
          fillColor: white,
          focusColor: white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
      ),
    );
  }

  GetBuilder<RemarkController> dropdown() {
    return GetBuilder<RemarkController>(builder: (controller) {
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
              hint: Text('RECOMMENDED'),
              elevation: 6,
              borderRadius: BorderRadius.circular(20),
              alignment: AlignmentDirectional.center,
              style: TextStyle(fontWeight: FontWeight.w600, color: grey),
              value: controller.recomendedValues,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: List.generate(
                controller.recommendedItems.length,
                (index) => DropdownMenuItem(
                  value: controller.recommendedItems[index],
                  child: Text(
                    controller.recommendedItems[index],
                  ),
                ),
              ),
              onChanged: (String? newValue) {
                controller.dropdownValueChanging(newValue!, 'RECOMMENDED');
              },
            ),
          ),
        ),
      );
    });
  }
}
