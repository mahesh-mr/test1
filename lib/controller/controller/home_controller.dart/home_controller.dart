import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  String? categoryValue;
  var selectedDate = DateTime.now().obs;

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
        firstDate: DateTime(2022),
        cancelText: 'Close',
        confirmText: 'Confirm',
        errorInvalidText: 'Provide Valid Date',
        selectableDayPredicate: disableDate,
        lastDate: DateTime(2024));

    if (pickDate != null && pickDate != selectedDate.value) {
      selectedDate.value = pickDate;
    }
  }

  bool disableDate(DateTime day) {
    if (day.isAfter(DateTime.now().subtract(Duration(days: 1)))) {
      return true;
    }
    return false;
  }
}
