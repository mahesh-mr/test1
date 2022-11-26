import 'package:fps/view/screens/main/widgets/navbar.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    gotoHome();
    super.onInit();
  }

  gotoHome() async {
    await Future.delayed(
      const Duration(seconds: 5),
    );
    Get.offAll(
      NavBarScreen(),
    );
  }
}
