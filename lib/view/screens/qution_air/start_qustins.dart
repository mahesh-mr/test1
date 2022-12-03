import 'package:flutter/material.dart';
import 'package:fps/view/screens/qution_air/list_qustions/pages/1.dart';
import 'package:fps/view/screens/qution_air/list_qustions/refact/refact.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_clippath.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_radio/radiobutton.dart';
import 'package:fps/view/screens/screen_register/widgets/custombutton.dart';
import 'package:fps/view/style/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class StartQustions extends StatelessWidget {
   StartQustions({super.key});
String cdate = DateFormat("dd-MM-yyy").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(
              bottom: 130,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: white,
              ),
            ),
          ),
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 130),
            child: Text(
              "CIVIL SUPPLIES",
              style: appTextWhite,
            ),
          ),
          toolbarHeight: 250,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: ClipPath(
            clipper: Customshape(),
            child:Stack(
            children: [
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                color: mainred,
              ),
              Positioned(
                bottom: 70.h,
                left: 70.w,
                child: Text(
                  '1234567',
                  style: fpsnumber,
                ),
              ),
              Positioned(
                  bottom: 70.h,
                  right: 70.w,
                  child: Container(
                    child: Text(
                      cdate,
                      style: fpsnumber,
                    ),
                  ))
            ],
          ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1',
                    style: numbeText,
                  ),
                  SizedBox(
                    width: 70.w,
                    height: 50.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LinearProgressIndicator(
                          backgroundColor: black,
                          value: 0.5,
                          color: yellow,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          '1/26',
                          style: TextStyle(
                              color: yellow, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
            ),
             ),
            Text(
              'Start Survey',
              style: welcomeText,
            ),
           
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 100.h,
              width: 250.w,
              child: Text(
                'As par KTPDS(Control) order 2021 para 44, Was the FPS open during inspection?',
                maxLines: 4,
                textAlign: TextAlign.center,
                style: normalText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: GenderSelector(),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: CustomButton(
                  onPressed: () {

                    Get.to(Page1());
                  },
                  title: 'SUBMIT',
                  btncolor: mainred,
                  textColor: bg),
            )
          ],
        ));
  }
}
