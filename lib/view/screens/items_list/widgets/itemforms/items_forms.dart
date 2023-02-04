import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/controller/controller/itemscontroller/itemes_controller.dart';
import 'package:fps/view/screens/sreen_survay/widgets/survey_form_wiidget.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ItemForm extends StatefulWidget {
   ItemForm({super.key,required this.index});
int index;
  @override
  State<ItemForm> createState() => _ItemFormState();
}

class _ItemFormState extends State<ItemForm> {
  final assignedquantityController = TextEditingController();
  final physicalstockController = TextEditingController();
  final fonkey =GlobalKey<FormState>();


  final itemStorage = GetStorage();
// double? a;
// double? b;
// double? c;
  double? calculation = 0;

  @override
  Widget build(BuildContext context) {
    final itemController = Get.put(ItemController());


    
    
    return Scaffold(
      backgroundColor: bg,
      body: Form(key: fonkey,
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSurveyTextForm(
            suffix: itemController.getItemModel[widget. index].id==7?"Ltr":"Kg",
            onChanged: (p0) {
              itemStorage.write(
                  'assignedquantity', assignedquantityController.text);
            },
            controller: assignedquantityController,
            textinputType: TextInputType.number,
            title: "Stock in e-POS machine",
            validator: (value) {
              if (value!.length == 0) {
                return "Enter assignedquantity";
              } else if (!RegExp(r'[0-9]./').hasMatch(value)) {
                return 'Please enter a valid quntity';
              } else {
                return null;
              }
            },
          ),
          h15,
          CustomSurveyTextForm(
            suffix: itemController.getItemModel[widget. index].id==7?"Ltr":"Kg",
            controller: physicalstockController,
            textinputType: TextInputType.number,
            title: "Physical stock",
            validator: (value) {
              if (value!.length == 0) {
                return "Enter physicalstock";
              } else if (!RegExp( r"(-?[0-9]+.[0-9]+),(-?[0-9]+.[0-9]+)").hasMatch(value)) {
                return 'Please enter a valid quntity';
              } else {
                return null;
              }
            },
            onChanged: (p0) {
              print("${itemController.getItemModel[widget. index].id}=====ind led");
              itemStorage.write('physicalstock', physicalstockController.text);

              double qustion1 = double.parse(assignedquantityController.text);
              double qustion2 = double.parse(physicalstockController.text);
              setState(() {
                calculation = qustion1 - qustion2;
              });
              itemStorage.write('calculation', calculation);
              print("${itemStorage.read(
                'assignedquantity',
              )}====1");
              print("${itemStorage.read(
                'physicalstock',
              )}====1");
              print("${itemStorage.read(
                'calculation',
              )}====1");
            },
          ),
          Text(
            "Difference",
            style: const TextStyle(
              color: grey3,
            ),
          ),
          h15,
          ClayContainer(
            color: white,
            borderRadius: 50.r,
            depth: 40,
            parentColor: white,
            spread: 2,
            child: Container(
              height: 45.w,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.r),
                  color: white,
                  border: Border.all(color: lightgrey)),
              child: Padding(
                padding: EdgeInsets.only(top: 15.h),
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: Text(
                        calculation!.toStringAsFixed(1),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: lightblack),
                      ),
                    ),
                    SizedBox(
                      width: 110.w,
                    ),
                    Text(
                     itemController.getItemModel[widget. index].id==7?"Ltr":"Kg",
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: lightblack),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // CustomSurveyTextForm(
          //   controller: difrenceController,
          //   textinputType: TextInputType.text,
          //   title: "Difference",
          //   validator: (value) {}, onChanged: (p0) {

          //   },
          // ),
        ],
      )),
    );
  }
}
