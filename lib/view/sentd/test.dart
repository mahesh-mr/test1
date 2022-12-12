import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var positionItems = [
    'POSITION',
    'POSITION 1',
    'POSITION 2',
    'POSITION 3',
    'POSITION 4',
    'POSITION 5',
    'POSITION 6'
  ];
  String positionValue = 'POSITION';
   String positionValues = 'POSITION';
final testController = Get.put(TestController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellow,
      body: GetBuilder<TestController>(

        dispose: (_){
testController.categoryValue=null;
        },
        builder: (controller) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
          decoration: BoxDecoration(
            border: Border.all(color: black),
            borderRadius: BorderRadius.circular(10),
            color: white,
          ),
          width: 145,
          child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                  menuMaxHeight: 200,
                  value: controller.categoryValue,
                  hint: const Text(" category"),
                  items: List.generate(
                    controller.categoryItems.length,
                    (index) => DropdownMenuItem(
                      value: controller.categoryItems[index],
                      child: Text(
                        controller.categoryItems[index],
                      ),
                    ),
                  ),
                  onChanged: (String? newValue) {
                    controller.dropdownChanging(newValue!, "category");
                  })),
    )
            ],
          );
        }
      ),
    );
  }
}
class TestController extends GetxController{
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