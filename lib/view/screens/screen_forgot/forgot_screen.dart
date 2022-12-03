import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/view/screens/screen_otp/otp_screen.dart';
import 'package:fps/view/screens/screen_register/widgets/custom_textform.dart';
import 'package:fps/view/screens/screen_register/widgets/custombutton.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';

class ForgotScreen extends StatelessWidget {
  ForgotScreen({super.key});

  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        elevation: 0.0,
        title: Text(
          "CIVIL SUPPLIES",
          style: appText,
        ),
        centerTitle: true,
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 180.h,
                  width: 200.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 180.h,
                        width: 140.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/4.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 45.h,
                  left: 10.w,
                  child: Text(
                    "Forgot\nPassword",
                    style: welcomeText,
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  bottom: 17,
                  left: 10.w,
                  child: const Text(
                    "Password Recovery",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: mainred,
                        letterSpacing: .4),
                  ),
                ),
              ],
            ),
            h40,
            const Text(
              "We will send password recovery\ncode in the Email",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, color: grey),
            ),
            h25,
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: ClayContainer(
                  color: white,
                  borderRadius: 50.r,
                  depth: 40,
                  parentColor: white,
                  spread: 2,
                  child: CustomTextForm(
                    controller: emailController,
                    maxline: 1,
                    textinputType: TextInputType.emailAddress,
                    title: 'Email Address',
                    validator: (value) {
                      // if (value == null) {
                      //   return "Required Field";
                      // } else if (!RegExp(
                      //         r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                      //     .hasMatch(value)) {
                      //   return "Enter a valid email";
                      // } else {
                      //   return null;
                      // }
                    },
                  ),
                )),
            h30,
            CustomButton(
                onPressed: () {
                  Get.to(OtpScreen());
                },
                title: 'Send Link For Recovery',
                btncolor: mainred,
                textColor: white)
          ],
        ),
      ),
    );
  }
}
