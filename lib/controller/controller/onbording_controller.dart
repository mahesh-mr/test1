import 'package:flutter/cupertino.dart';
import 'package:fps/model/onbording_model.dart';
import 'package:fps/view/screens/screen_onboarding/onbording_screen.dart';
import 'package:get/get.dart';

class onbordingController extends GetxController {
  var selectedIndex = 0.obs;
  bool get isLastPage => selectedIndex.value == onbordingList.length - 1;
  var pagecontroller = PageController();

  forwerdAction() {
    if (isLastPage) {
      // Get.offAll(LogIn());
    } else {
      pagecontroller.nextPage(duration: 50.milliseconds, curve: Curves.ease);
    }
  }

  List<OnbordingModel> onbordingList = [
    OnbordingModel(
        headline: "Start The Survey",
        subline:
            "Easy  And Secure As Soon As The Survey Is Submited, The Date Is Scure",
        image: 'assets/1.png'),
    OnbordingModel(
        headline: "Start The Survey",
        subline:
            "Easy  And Secure As Soon As The Survey Is Submited, The Date Is Scure",
        image: 'assets/1.png'),
    OnbordingModel(
        headline: "Start The Survey",
        subline:
            "Easy  And Secure As Soon As The Survey Is Submited, The Date Is Scure",
        image: 'assets/1.png'),
  ];

  gotoHome() async {
    await Future.delayed(
      const Duration(seconds: 5),
    );
    Get.offAll(OnboaringScreen());
  }

  @override
  void onInit() {
    gotoHome();
    super.onInit();
  }
}
