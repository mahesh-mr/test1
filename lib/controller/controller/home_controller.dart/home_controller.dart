import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //String? categoryValue;
  var selectedDate = DateTime.now().obs;
  var isVisible = true.obs;

  String? firkaValue;
  String? districtValue;
  String? talukvalues;

  List<String> firkaitems = [
    'FIRKA 1',
    'FIRKA 2',
    'FIRKA 3',
    'FIRKA 4',
    'FIRKA 5',
    'FIRKA 6'
  ];
  List<String> districtItems = [
    'DISTRICT 1',
    'DISTRICT 2',
    'DISTRICT 3',
    'DISTRICT 4',
    'DISTRICT 5',
    'DISTRICT 6'
  ];
  List<String> talukItems = [
    'TALUK 1',
    'TALUK 2',
    'TALUK 3',
    'TALUK 4',
    'TALUK 5',
    'TALUK 6'
  ];

  dropdownValueChanging(String value, String checkingValue) {
    if (checkingValue == "DISTRICT") {
      districtValue = value;
    } else if (checkingValue == "TALUK") {
      talukvalues = value;
    } else if (checkingValue == "FIRKA") {
      firkaValue = value;
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
