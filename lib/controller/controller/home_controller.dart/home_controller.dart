import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  String? categoryValue;
  var selectedDate = DateTime.now().obs;

  var isVisible =true.obs;

  dropdownChanging(String value, String chekingvalue) {
    if (chekingvalue == 'category') {
      categoryValue = value;
    }
    update();
  }
  choseDate() async {
    DateTime? pickDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: selectedDate.value.subtract(const Duration(days: 770)),
      lastDate: selectedDate.value,
      cancelText: 'Close',
      confirmText: 'Confirm',
      errorInvalidText: 'Provide Valid Date',
    );
    //  selectableDayPredicate: disableDate,);

    if (pickDate != null && pickDate != selectedDate.value) {
      selectedDate.value = pickDate;
    }
  }
  

//note use in ihis picker=============================================
//====================================================================

  // bool disableDate(DateTime day) {
  //   if (day.isAfter(DateTime.now().subtract(Duration(days: 1)))) {
  //     return true;
  //   }
  //   return false;
  // }
}
