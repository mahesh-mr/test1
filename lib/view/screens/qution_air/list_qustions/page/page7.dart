import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/page/page8.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:fps/view/screens/screen_register/widgets/custom_textform.dart';
import 'package:fps/view/screens/sreen_survay/widgets/survey_back_button.dart';
import 'package:fps/view/screens/widgets/shadow_button.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';

class Page6 extends StatelessWidget {
   Page6({super.key});
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
//       body: RefactorSarvey(
//         barstatus: '7/26',
//         number: '7',
//         text:
//             'If so how many cards? ( Enter T Card Numbers ).',
//         onPressed: () {
//           Get.to(Page7());
//         },
//       ),
//     );
//   }
// }

 body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '7',
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
                      h3,
                      Text(
                        '7/25',
                        style: TextStyle(
                            color: yellow, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            h40,
            SizedBox(
              height: 90.h,
              width: 250.w,
              child: Text(
                 'If so how many cards? ( Enter Card Numbers ).',
                maxLines: 6,
                textAlign: TextAlign.center,
                style: normalText,
              ),
            ),
              h10,
            CustomTextForm(
              controller: nameController,
              maxline: 1,
              textinputType: TextInputType.text,
              title: '',
              validator: (value) {},
            ),

            h50,
            ShadowButton(
                onTap: () {
                 Get.to(Page7());
                },
                buttonColor: mainred,
                height: 40.h,
                textColor: bg,
                width: double.infinity,
                title: 'SUBMIT'),
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
      ),
    );
  }
}

