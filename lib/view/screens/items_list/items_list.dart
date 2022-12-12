import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/controller/controller/itemsController/itemes_controller.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:fps/view/screens/sreen_survay/widgets/survey_form_wiidget.dart';
import 'package:fps/view/screens/widgets/shadow_button.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';

class ItemsListHome extends StatelessWidget {
  ItemsListHome({
    super.key,
  });

  final depositController = TextEditingController();
  final stockController = TextEditingController();
  final difrenceController = TextEditingController();
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final itemController = Get.put(ItemController());
    return Scaffold(
      backgroundColor: bg,
      appBar: CustomAppbar(height: 210.h),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // const Text(
          //   'Stock level at the time of inspection (kg)',
          //   style: TextStyle(
          //       fontWeight: FontWeight.w500, color: mainred, fontSize: 17),
          // ),
          // h10,
          Expanded(
            child: PageView.builder(
              controller: itemController.pagecontroller,
              onPageChanged: itemController.selectedIndex,
              physics: NeverScrollableScrollPhysics(),
              itemCount: itemController.itemsName.length,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Column(
                      children: [
                        Text(
                          itemController.itemsName[index],
                          style: fontZ_30_black,
                        ),
                        h20,
                        CustomSurveyTextForm(
                          controller: depositController,
                          textinputType: TextInputType.text,
                          title: "Deposit in e-POS machine",
                          validator: (value) {},
                        ),
                        h10,
                        CustomSurveyTextForm(
                          controller: stockController,
                          textinputType: TextInputType.text,
                          title: "Physical stock",
                          validator: (value) {},
                        ),
                        h10,
                        CustomSurveyTextForm(
                          controller: difrenceController,
                          textinputType: TextInputType.text,
                          title: "Difference",
                          validator: (value) {},
                        ),
                        h30,
                        CustomShadowButton(  onTap: () {
                              itemController.forwerdAction();
                            },
                            buttonColor: mainred,
                            height: 40.h,
                            textColor: bg,
                            width: double.infinity,
                            title: 'SUBMIT'),
                        
                        h40,
                        SizedBox(
                          height: 20.h,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: lightblack,
                                  minimumSize: Size(60.w, 20.h),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                ),
                                onPressed: () {
                                  itemController.pagecontroller.previousPage(
                                    duration: 550.milliseconds,
                                    curve: Curves.ease,
                                  );
                                },
                                child: Wrap(
                                  children: [
                                    Icon(
                                      Icons.arrow_back_ios,
                                      color: white,
                                      size: 10.sp,
                                    ),
                                    Text(
                                      'Back',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: mainred,
                                  minimumSize: Size(60.w, 20.h),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                ),
                                onPressed: () {
                                  itemController.pagecontroller.nextPage(
                                    duration: 550.milliseconds,
                                    curve: Curves.ease,
                                  );
                                },
                                child: Wrap(
                                  children: [
                                    Text(
                                      'Next',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: white,
                                      size: 10.sp,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
