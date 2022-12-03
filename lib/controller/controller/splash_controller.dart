import 'dart:async';
import 'package:fps/view/screens/screen_onboarding/onbording_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  var start = 30.obs;
  @override
  void onInit() {
    gotoHome();
    super.onInit();
  }

  gotoHome() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    Get.offAll(
      const OnbordingScreen(),
    );
  }
}
