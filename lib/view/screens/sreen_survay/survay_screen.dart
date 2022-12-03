import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:fps/controller/controller/home_controller.dart/home_controller.dart';
import 'package:fps/view/screens/qution_air/start_qustins.dart';
import 'package:fps/view/screens/screen_register/widgets/custombutton.dart';
import 'package:fps/view/screens/sreen_survay/widgets/survey_back_button.dart';
import 'package:fps/view/screens/sreen_survay/widgets/survey_form_wiidget.dart';
import 'package:fps/view/style/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SurveyScreen extends StatelessWidget {
  SurveyScreen({super.key});

  final fpsnumberController = TextEditingController();
  final nameController = TextEditingController();
  final positionController = TextEditingController();
  final homecontroller = Get.put(HomeController());

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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              h50,
              Text(
                'Survey',
                style: welcomeText,
              ),
              h40,
              CustomSurveyTextForm(
                controller: fpsnumberController,
                textinputType: TextInputType.number,
                title: "FPS Number",
                validator: (value) {},
                //     sheight: 10,
              ),
              h15,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date of Last Inspection',
                    style: const TextStyle(
                      color: grey3,
                    ),
                  ),
                  h10,
                  Obx(() {
                    return GestureDetector(
                      onTap: () {
                        homecontroller.choseDate();
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
                              borderRadius: BorderRadius.circular(40.r),
                              color: white,
                              border: Border.all(color: lightgrey)),
                          child: Padding(
                            padding: EdgeInsets.only(top: 15.h),
                            child: Text(
                              DateFormat("dd-MM-yyyy")
                                  .format(homecontroller.selectedDate.value)
                                  .toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                controller: nameController,
                textinputType: TextInputType.text,
                title: "Name of Previous Inspector",
                validator: (value) {},
              ),
              h15,
              CustomSurveyTextForm(
                controller: positionController,
                textinputType: TextInputType.text,
                title: "Position of Previous Inspector",
                validator: (value) {},
              ),
              h30,
              CustomButton(
                  onPressed: () {
                    Get.to(StartQustions());
                  },
                  title: 'SUBMIT',
                  btncolor: mainred,
                  textColor: white),
              h30,
              SizedBox(
                height: 20.h,
                width: 140.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SurvayBackButton(
                        bg: lightblack,
                        onPressed: () {
                          Get.back();
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
                        bg: lightblack,
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
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
