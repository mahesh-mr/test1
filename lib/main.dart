import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/model/onbording_model.dart';
import 'package:fps/view/screens/iconbutton/iconbutton.dart';
import 'package:fps/view/screens/qution_air/start_qustins.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_radio/radiobutton.dart';
import 'package:fps/view/screens/screen%20_login/login_screen.dart';
import 'package:fps/view/screens/screen_forgot/forgot_screen.dart';
import 'package:fps/view/screens/screen_home/home_screen.dart';
import 'package:fps/view/screens/screen_onboarding/onbording_screen.dart';
import 'package:fps/view/screens/screen_otp/otp_screen.dart';
import 'package:fps/view/screens/screen_register/resgister.dart';
import 'package:fps/view/screens/screen_splash/splash_screen.dart';
import 'package:fps/view/screens/sreen_survay/survay_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return GetMaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch:Colors.red,
            ),
            debugShowCheckedModeBanner: false,
            home: SplashScreen()
          );
        });
  }
}

