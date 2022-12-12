import 'package:fps/model/dropdown_model/dropdow.dart';
import 'package:fps/model/onbording_model.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DropdownController extends GetxController{
String? categoryValue;



  

  List<String>categoryItems = [
'car',
'Bags',
'Van',
'House',
'helmets',
'cloth',
  ];
  dropdownChanging(String value, String chekingvalue){
    if (chekingvalue =='category') {
      categoryValue=value;
    }
    update();
  }
  




}