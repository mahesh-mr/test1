import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fps/view/screens/qution_air/list_qustions/withness_screen/appbar/witness_appbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/view/screens/qution_air/list_qustions/withness_screen/witness_2_screen.dart';
import 'package:fps/view/screens/sreen_survay/widgets/survey_form_wiidget.dart';
import 'package:fps/view/screens/widgets/shadow_button.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';

class WitnessScreen1 extends StatelessWidget {
  WitnessScreen1({super.key});

  final nameController = TextEditingController();
  final numberController = TextEditingController();
  final phoneController = TextEditingController();
  final positionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: WitnessAppbar(text: 'Witness 1',subText: '(Particulars of 2 witnesses to be furnished.)'),
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
                title: "Card No",
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
              ShadowButton(
                title: 'SUBMIT',
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
