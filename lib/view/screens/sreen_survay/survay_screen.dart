import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fps/view/screens/screen_register/widgets/custombutton.dart';
import 'package:fps/view/screens/sreen_survay/widgets/survey_back_button.dart';
import 'package:fps/view/screens/sreen_survay/widgets/survey_form_wiidget.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';

class SurveyScreen extends StatelessWidget {
  SurveyScreen({super.key});

  final fpsnumberController = TextEditingController();
  final nameController = TextEditingController();
  final positionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: bg,
        title: Text(
          "CIVIL SUPPLIES",
          style: appText,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'SURVEY',
              style: welcomeText,
            ),
            CustomSurveyTextForm(
              controller: fpsnumberController,
              textinputType: TextInputType.number,
              title: "FPS Number",
              validator: (value) {},
         //     sheight: 10,
            ),
            CustomSurveyTextForm(
              controller: fpsnumberController,
              textinputType: TextInputType.number,
              title: "Date of Last Inspection",
              validator: (value) {},
           //   sheight: 10,
            ),
            CustomSurveyTextForm(
              controller: fpsnumberController,
              textinputType: TextInputType.number,
              title: "Name of Previous Inspector",
              validator: (value) {},
            //  sheight: 10,
            ),
            CustomSurveyTextForm(
              controller: fpsnumberController,
              textinputType: TextInputType.number,
              title: "Position of Previous Inspector",
              validator: (value) {},
            
            ),
            CustomButton(
                onPressed: () {},
                title: 'SUBMIT',
                btncolor: mainred,
                textColor: white),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,width: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SurvayBackButton(
                      onPressed: () {Get.back();},
                      width: 60,
                      height: 20,
                      child: Wrap(
                        children:const [
                           Icon(
                            Icons.arrow_back_ios,
                            color: white,
                            size: 10,
                          ),
                          Text(
                            'Back',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      )),
                  SurvayBackButton(
                      onPressed: () {},
                      width: 60,
                      height: 20,
                      child: Wrap(
                        children:const [
                          Text(
                            'Next',
                            style: TextStyle(fontSize: 10),
                          ),
                           Icon(
                            Icons.arrow_forward_ios,
                            color: white,
                            size: 10,
                          ),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
