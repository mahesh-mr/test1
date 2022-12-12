import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fps/view/screens/camerScreen/camera.dart';
import 'package:fps/view/screens/items_list/items_list.dart';
import 'package:fps/view/screens/qution_air/list_qustions/remark_screen/remark.dart';
import 'package:fps/view/screens/qution_air/list_qustions/withness_screen/appbar/witness_appbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/view/screens/sreen_survay/widgets/survey_form_wiidget.dart';
import 'package:fps/view/screens/widgets/shadow_button.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';
 class WitnessScreen2 extends StatelessWidget {
  WitnessScreen2({super.key});

  final nameController = TextEditingController();
  final numberController = TextEditingController();
  final phoneController = TextEditingController();
  final positionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: WitnessAppbar(text: 'Witness 2',subText: '(Particulars of 2 witnesses to be furnished.)'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            children: [
              CustomSurveyTextForm(
                controller: nameController,
                textinputType: TextInputType.text,
                title: "Name",
                validator: (value) {},
              ),
              h15,
              CustomSurveyTextForm(
                controller: numberController,
                textinputType: TextInputType.number,
                title: "Card Nor",
                validator: (value) {},
              ),
              h15,
              CustomSurveyTextForm(
                controller: phoneController,
                textinputType: TextInputType.number,
                title: "Aadhar No / Phone No",
                validator: (value) {},
              ),
          
              h40,
            CustomShadowButton(  title: 'SUBMIT',
                buttonColor: mainred,
                height: 40.h,
                width: double.infinity,
                textColor: bg,
                onTap: () {
                  Get.to(
                    WitnessScreen2(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
