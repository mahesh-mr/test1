import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_radio/radiobutton.dart';
import 'package:fps/view/screens/sreen_survay/widgets/survey_back_button.dart';
import 'package:fps/view/screens/widgets/shadow_button.dart';
import 'package:fps/view/style/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RefactorSarvey extends StatelessWidget {
  RefactorSarvey(
      {super.key,
      required this.barstatus,
      required this.number,
      required this.text,
      required this.onPressed});

  final String text;
  final String number;
  final String barstatus;
  final VoidCallback onPressed;
  String cdate = DateFormat("dd-MM-yyy").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 40.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                number,
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
                    Text(
                      barstatus,
                      style:
                          TextStyle(color: yellow, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 100.h,
            width: 250.w,
            child: Text(
              text,
              maxLines: 6,
              textAlign: TextAlign.center,
              style: normalText,
            ),
          ),
        GenderSelector(),
      
      h30,
      CustomShadowButton(onTap:onPressed, buttonColor: mainred, height: 
      40.h, textColor: bg, width: double.infinity, title: 'SUBMIT'),
     
        //  CustomButton(
        //         onPressed: onPressed,
        //         title: 'SUBMIT',
        //         btncolor: mainred,
        //         textColor: bg),
        
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
    );
  }
}
