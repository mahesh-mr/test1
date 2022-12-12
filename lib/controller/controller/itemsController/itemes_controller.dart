import 'package:flutter/cupertino.dart';
import 'package:fps/view/screens/camerScreen/camera.dart';
import 'package:fps/view/screens/navebar_screen/navbar.dart';
import 'package:fps/view/screens/qution_air/list_qustions/withness_screen/withness_1_screen.dart';
import 'package:get/get.dart';

class ItemController extends GetxController{

      var selectedIndex = 0.obs;
 bool get isLastPage => selectedIndex.value == itemsName.length - 1;
  var pagecontroller = PageController();

  forwerdAction() {
    //bool isvaliod = fomliey.v.
    if (isLastPage) {
  Get.offAll(CameraScreen());
    } else {
    
      pagecontroller.nextPage(duration: 550.milliseconds, curve: Curves.ease);
    }
  }
    gotoHome() async {
    await Future.delayed(
      const Duration(seconds: 50),
    );
  }
  List<String> itemsName = [
    'Pachari',
    'Puzhukkalari',
    'Kuthari',
    'Gothamb',
    'Aatta',
    'Panchasara',
    'kerosene',
  ];
}
