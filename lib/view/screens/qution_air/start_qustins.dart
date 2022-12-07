import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page2.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_radio/radiobutton.dart';
import 'package:fps/view/screens/screen_register/widgets/custombutton.dart';
import 'package:fps/view/screens/sreen_survay/widgets/survey_back_button.dart';
import 'package:fps/view/screens/widgets/shadow_button.dart';
import 'package:fps/view/style/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class StartQustions extends StatelessWidget {
  StartQustions({super.key});
  String cdate = DateFormat("dd-MM-yyy").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        appBar: CustomAppbar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1',
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
                          value: 0.5,
                          color: yellow,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        const Text(
                          '1/26',
                          style: TextStyle(
                              color: yellow, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                'Start Survey',
                style: welcomeText,
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 100.h,
                width: 250.w,
                child: Text(
                  'As per KTPDS(Control) order 2021 para 44, Was the FPS open during inspection?',
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  style: normalText,
                ),
              ),

              GenderSelector(),

              SizedBox(
                height: 30.h,
              ),
              ShadowButton(
                  onTap: () {
                    Get.to(Page1());
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
                      )),
                ],
              ),
            ),
            ],
          ),
        ));
  }
}
