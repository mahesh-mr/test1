import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fps/controller/controller/home_controller.dart/distict_controller.dart';
import 'package:fps/controller/service/dioclint/token/token.dart';
import 'package:fps/view/screens/navebar_screen/navbar.dart';
import 'package:fps/view/screens/screen_splash/splash_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String? token = GetLocalStorage.getUserIdAndToken("token");
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return GetMaterialApp(
              title: 'FPS Mobileapp',
              theme: ThemeData(
                primarySwatch: Colors.red,
              ),
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('en', ''), // English, no country code
                Locale('es', ''), // Spanish, no country code
              ],
//home: ListClsss());
//home: CameraSignature());
//home: MyTest());
              home: token == null ? SplashScreen() : NavBarScreen());
        });
  }
}
