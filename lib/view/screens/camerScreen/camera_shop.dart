import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/controller/controller/survey_controller/position_controller.dart';
import 'package:fps/controller/image_capture_controller/image_controller.dart';
import 'package:fps/controller/service/dioclint/token/token.dart';
import 'package:fps/controller/service/image_uplod/image_service.dart';
import 'package:fps/view/screens/camerScreen/camera_signature.dart';
import 'package:fps/view/screens/navebar_screen/navbar.dart';
import 'package:fps/view/screens/remark_screen/remark.dart';
import 'package:fps/view/screens/witness_screen/withness_1_screen.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:fps/view/screens/widgets/shadow_button.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';

class CameraShop extends StatefulWidget {
  CameraShop({super.key});

  @override
  State<CameraShop> createState() => _CameraShopState();
}

class _CameraShopState extends State<CameraShop> {
  final imageuplodController = Get.put(ImageUplodController());

bool isLoding=false;
  var value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: CustomAppbar(height: 200.h),
      body: GetBuilder<ImageUplodController>(
          dispose: (_) {
            imageuplodController.imagePath = null;
            imageuplodController.siganatureImagePath = null;
          },
          initState: (state) {},
          builder: (controller) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Image of the Shop',
                    style: fontZ_14_Grey,
                  ),
                  h10,
                  controller.imagePath != null
                      ? Stack(
                          children: [
                            Container(
                              height: 330.h,
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
                            ),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: IconButton(
                                onPressed: () {
                                  controller.placePicImage();
                                },
                                icon: Icon(
                                  CupertinoIcons.camera_circle,
                                  size: 30.w,
                                  color: white,
                                ),
                              ),
                            ),
                          ],
                        )
                      : GestureDetector(
                          onTap: () {
                            controller.placePicImage();
                          },
                          child: Container(
                            width: double.infinity,
                            height: 330.h,
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
                  h25,
                  CustomShadowButton(
                    onTap:isLoding?null: ()async {
                          setState(() {
                            isLoding=true;
                          });await Future.delayed(Duration(seconds: 1));

                          setState(() {
                            isLoding=false;
                          });

                      ImageService.imageUpolodService(
                        controller.imagePath!,
                      ).then((value) {
                        if (value == "success") {
                          Get.offAll(RemarkScreeen());
                        }
                      });
                      ;
                    },
                    buttonColor: mainred,
                  title:isLoding?CircularProgressIndicator(color: yellow,):  butenText(title: 'Submit', textColor: bg),
                    height: 40.h,
                    width: double.infinity,
                  ),
                ],
              ),
            );
          }),
    );
  }
}

class CameraShop1 extends StatelessWidget {
  CameraShop1({super.key});

  final imageuplodController = Get.put(ImageUplodController());
  final storageController = Get.put(GetLocalStorage());    final positionController = Get.put(PositionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: CustomAppbar(height: 200.h),
      body: GetBuilder<ImageUplodController>(
          dispose: (_) {
            imageuplodController.imagePath = null;
            imageuplodController.siganatureImagePath = null;
          },
          initState: (state) {},
          builder: (controller) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Image of the Shop',
                    style: fontZ_14_Grey,
                  ),
                  h10,
                  controller.imagePath != null
                      ? Stack(
                          children: [
                            Container(
                              height: 330.h,
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
                            ),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: IconButton(
                                onPressed: () {
                                  controller.placePicImage();
                                },
                                icon: Icon(
                                  CupertinoIcons.camera_circle,
                                  size: 30.w,
                                  color: white,
                                ),
                              ),
                            ),
                          ],
                        )
                      : GestureDetector(
                          onTap: () {
                            controller.placePicImage();
                          },
                          child: Container(
                            width: double.infinity,
                            height: 330.h,
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
                  h25,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomShadowButton(
                        onTap: () {
                          positionController.switchValue.value = false;
                          storageController.removeUserremovedSId();
                          Future.delayed(Duration(seconds: 1))
                              .then((value) => Get.offAll(NavBarScreen()));
                        },
                        buttonColor: mainred,
                        title: butenText(title: 'Restart', textColor: bg),
                        height: 40.h,
                        width: 150.w,
                      ),
                      CustomShadowButton(
                        onTap: () {
                          ImageService.imageUpolodService2(
                            controller.imagePath!,
                          ).then((value) {
                            if (value == "success") {
                              Get.offAll(NavBarScreen());
                            }
                          });
                        },
                        buttonColor: mainred,
                        title: butenText(title: 'Submit', textColor: bg),
                        height: 40.h,
                        width: 100.w,
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
