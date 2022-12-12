import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/controller/image_capture_controller/image_controller.dart';
import 'package:fps/view/screens/qution_air/list_qustions/remark_screen/remark.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:fps/view/screens/widgets/shadow_button.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatelessWidget {
  CameraScreen({super.key});
  final imageuplodController = Get.put(ImageUplodController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: CustomAppbar(height: 200.h),
      body: GetBuilder<ImageUplodController>(
          dispose: (_) {
            // imageuplodController.imagePath = null;
            // imageuplodController.siganatureImagePath = null;
          },
          initState: (state) {},
          builder: (controller) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shop',
                    style: fontZ_14_Grey,
                  ),
                  h10,
                  controller.imagePath != null
                      ? Container(
                          height: 160.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: lightblack),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: FileImage(
                                  File(
                                    controller.imagePath.toString(),
                                  ),
                                ),
                                fit: BoxFit.fill),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            controller.placePicImage(ImageSource.camera);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 160.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: lightblack),
                              image: const DecorationImage(
                                  image: AssetImage('assets/img.png'),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(20.r),
                              // color: blue,
                            ),
                          ),
                        ),
                  h10,
                  Text(
                    'Signature',
                    style: fontZ_14_Grey,
                  ),
                  h10,
                  controller.siganatureImagePath != null
                      ? Container(
                          height: 160.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: lightblack),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: FileImage(
                                  File(
                                    controller.siganatureImagePath.toString(),
                                  ),
                                ),
                                fit: BoxFit.fill),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            controller.sinaturePicImage(ImageSource.camera);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 160.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: lightblack),
                              image: const DecorationImage(
                                  image: AssetImage('assets/signature.png'),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(20.r),
                              // color: blue,
                            ),
                          ),
                        ),
                  h25,
                  CustomShadowButton( onTap: () {
                      Get.to(RemarkScreeen());
                    },
                    buttonColor: mainred,
                    title: 'Submit',
                    height: 40.h,
                    width: double.infinity,
                    textColor: bg,
                  )
                 
                ],
              ),
            );
          }),
    );
  }
}
