import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/controller/service/qustion_air_service/fps_owner_name_service/fps_owner_name.dart';
import 'package:fps/view/screens/items_list/items_list.dart';
import 'package:fps/view/screens/qution_air/page_view.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:fps/view/screens/screen%20_login/widgets/custom_textform.dart';
import 'package:fps/view/screens/sreen_survay/widgets/survey_form_wiidget.dart';
import 'package:fps/view/screens/widgets/popup_menu/popup_menu.dart';
import 'package:fps/view/screens/widgets/shadow_button.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';

class FpsOwnerName extends StatelessWidget {
  FpsOwnerName({super.key});
  final nameController = TextEditingController();
  final relationController = TextEditingController();
  final fomkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar:  CustomAppbar(height: 220.h),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 110.h,
                width: 130.w,
                decoration:BoxDecoration(image: DecorationImage(image: AssetImage('assets/owner.png'))),
              ),
           
              Container(
                height: 120,
                width: double.infinity,
         // color: yellow,
                child: Text(
                  'പരിശോധന സമയം എഫ്.പി.എസ് നിയന്ത്രിച്ചിരുന്ന വ്യക്തിയുടെ പേര്, എഫ്.പി.എസ്-ഉം മായുള്ള ബന്ധം',
                  maxLines: 5,
                  textAlign: TextAlign.center,
                  style: normalText,
                ),
              ),
            
              Form(
                key: fomkey,
                child: Column(
                  children: [CustomSurveyTextForm(controller:  nameController,
                 textinputType: TextInputType.name,
                    title: "Owner Name", 
                   validator: (value) {
                          if (value!.length == 0) {
                            return "        please Enter the owners name";
                          } else if (!RegExp(r'(^[a-z A-Z]+$)')
                              .hasMatch(value)) {
                            return '         Please enter a valid name';
                          } else {
                            return null;
                          }
                        },
                        onChanged: (p0) {},
                     suffix: ''),
                   
                    h10,
                    CustomSurveyTextForm(controller:  relationController,
                 textinputType: TextInputType.name,
                    title: "Relation", 
                   validator: (value) {
                          if (value!.length == 0) {
                            return "        please Enter the owners relation";
                          } else if (!RegExp(r'(^[a-z A-Z]+$)')
                              .hasMatch(value)) {
                            return '         Please enter a valid relation';
                          } else {
                            return null;
                          }
                        },
                        onChanged: (p0) {},
                     suffix: ''),
                  ],
                ),
              ),
             h30,
              CustomShadowButton(
                  onTap: () {
                    bool isValid = fomkey.currentState!.validate();
                    if (isValid) {
                      FpsOwnerNameService.fpsOwnerName(
                              fpsOwnerName: nameController.text,
                              relation: relationController.text)
                          .then((value) {
                        if (value == 'success') {
                          Get.offAll(ItemsListHome());
                        }
                      });
                    }
                  },
                  buttonColor: mainred,
                  width: double.infinity,
                  height: 40.h,
                  title: butenText(title: 'SUBMIT', textColor: bg))
            ],
          ),
        ),
      ),
    );
  }
}
