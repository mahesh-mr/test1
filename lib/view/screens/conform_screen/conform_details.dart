import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/controller/controller/confirm_owner_controller/confirm_owner_controller.dart';
import 'package:fps/controller/controller/home_controller.dart/home_controller.dart';
import 'package:fps/controller/controller/survey_controller/position_controller.dart';
import 'package:fps/controller/controller/tost/tost.dart';
import 'package:fps/controller/service/accompaned_service/accompaned_service.dart';
import 'package:fps/controller/service/dioclint/token/token.dart';
import 'package:fps/controller/service/home_service/start_survay_survice/start_survay_service.dart';
import 'package:fps/view/screens/conform_screen/widgets/custom_details_container.dart';
import 'package:fps/view/screens/navebar_screen/navbar.dart';
import 'package:fps/view/screens/qution_air/page_view.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:fps/view/screens/widgets/popup_menu/popup_menu.dart';
import 'package:fps/view/screens/widgets/shadow_button.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class ConformDetails extends StatefulWidget {
  ConformDetails({super.key});

  @override
  State<ConformDetails> createState() => _ConformDetailsState();
}

class _ConformDetailsState extends State<ConformDetails> {
  // final storageController = Get.put(GetLocalStorage());
  // String? fpsNo = GetLocalStorage.getfpsId('fps_no');

  // final survayData = GetStorage();

  // String? userId = GetLocalStorage.getUserIdAndToken('id');


  @override
  Widget build(BuildContext context) {
    final confirmcontroller = Get.put(ConfirmController());
 

    return Scaffold(
        backgroundColor: bg,
        appBar: CustomAppbarProfile(height: 170.h, widget: Popups(color: bg)),
        body:
             Obx(() {
              if (confirmcontroller.loding.value) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return
            Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: 
          // Obx(() {
          //   if (confirmcontroller.loding.value) {
          //     return const Center(
          //       child: CircularProgressIndicator(),
          //     );
          //   }
          //   return
             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClayContainer(
                  color: white,
                  borderRadius: 20.r,
                  depth: 40,
                  parentColor: white,
                  spread: 2,
                  child: Container(
                    height: 350.w,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: white,
                        border: Border.all(color: lightgrey)),
                    child: Padding(
                        padding: EdgeInsets.only(top: 15.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Container(
                                height: 250.h, width: 120.w, //color: red,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    confirmText("FPS Number", 15.sp, 1),
                                    h25,
                                    confirmText("Licensee Name", 15.sp, 1),
                                    h25,
                                    confirmText("Licensee Contact", 15.sp, 1),
                                    h25,
                                    confirmText("Licensee Address", 15.sp, 1),
                                  ],
                                ),
                              ),
                            ),
                            w5,
                            Container(
                              height: 250.h, width: 10.w, //color: red,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  confirmText(":", 15.sp, 1),
                                  h25,
                                  confirmText(":", 15.sp, 1),
                                  h25,
                                  confirmText(":", 15.sp, 1),
                                  h25,
                                  confirmText(":", 15.sp, 1),
                                ],
                              ),
                            ),
                            w5,
                            Container(
                              height: 250.h, width: 120.w, //color: red,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  confirmText(
                                      confirmcontroller
                                          .confirmModel!.data!.fpsNo
                                          .toString(),
                                      15.sp,
                                      1),
                                  h25,
                                  confirmText(
                                      confirmcontroller
                                          .confirmModel!.data!.licenseeName
                                          .toString(),
                                      15.sp,
                                      1),
                                  h25,
                                  confirmText(
                                      confirmcontroller
                                          .confirmModel!.data!.phoneNo
                                          .toString(),
                                      15.sp,
                                      1),
                                  h25,
                                  Container(
                                      height: 100.h,
                                      width: 116.w,
                                      //color: yellow,

                                      child: confirmText(
                                          confirmcontroller
                                              .confirmModel!.data!.address!,
                                          15.sp,
                                          5)),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                h50,
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                // CustomShadowButton(
                //   onTap: () {
                //     print("${survayData.read('fpsNo')}=== fps no  1");
                //     survayData.remove('fpsNo');
                //     print("${survayData.read('fpsNo')}=== fps no  2");
                //     Future.delayed(Duration(seconds: 1)).then((value) =>
                //         storageController.removeUserremovedSId());
                //     positionController.fpsValue = null;

                //     Navigator.push(
                //       context,
                //       CupertinoPageRoute(
                //           builder: (context) => NavBarScreen()),
                //     );
                //   },
                //   buttonColor: mainred,
                //   title: butenText(title: 'Edit', textColor: bg),
                //   height: 40.h,
                //   width: 100.w,
                // ),
                CustomShadowButton(
                  onTap:
                      // isLoding
                      // ? null
                      // :
                      () {
                    // setState(() {
                    //   isLoding = true;
                    // });
                    // await Future.delayed(Duration(milliseconds: 30));

                    // setState(() {
                    //   isLoding = false;
                    // });

                    // var dateFormat = DateFormat("yyyy-MM-dd hh:mm:ss")
                    //     .format(positionController
                    //         .lastInspectonDates.value)
                    //     .toString();
                    // String dates = DateFormat("yyyy-MM-dd hh:mm:ss")
                    //     .format(homecontroller.selectedDate.value)
                    //     .toString();

                    // print(
                    //     "${survayData.read('districtValue')} ===disVAL");
                    // print(
                    //     "${survayData.read('talukvalues')} ===talVAL");
                    // print(
                    //     "${survayData.read('firkaValue')} ===firVAL");
                    // print(
                    //     "${survayData.read('positionValue')} ===positionValue");

                    // StartSurvay.startSuvey(
                    //         district:
                    //             survayData.read('districtValue'),
                    //         // homecontroller.districtValue.toString(),
                    //         taluk: survayData.read(
                    //             'talukvalues'), //homecontroller.talukvalues.toString(),
                    //         firka: survayData.read('firkaValue'),
                    //         // homecontroller.firkaValue.toString(),
                    //         inspection_date: dates,
                    //         user_id: userId!,
                    //         fps_no: survayData.read('fpsNo'),
                    //         //   survayData.read('fpsNo'),
                    //         previous_inspector_name:
                    //             survayData.read('pName'),
                    //         last_inspection_date: dateFormat,
                    //         previous_inspector_position:
                    //             survayData.read('positionValue'),
                    //         context: context)
                    //     .then((value) {
                    //   if (value == "success") {
                    //     print("${survayData.read('pName')}==name");
                    //     print("${userId}==uid");
                    //     print("${dates}==tal");
                    //     print("${dateFormat}==tal");

                    //     // print( "${survayData.read('fpsNo')}==fpsNo");
                    //     print(survayData.read('pName'));
                    //     String? name;
                    //     String? role;
                    //     String? survayId =
                    //         GetLocalStorage.getfpsId('sId');
                    //     //    String? fpsNo = GetLocalStorage.getfpsId('fps_no');

                    //     List list = [];
                    //     List<dynamic>? inspecters =
                    //         survayData.read('inspectersList');
                    //     //     var data = inspecters == null ? list : inspecters;
                    //     var data = inspecters ?? list;
                    //     for (var element in data) {
                    //       name = element.name;
                    //       role = element.role_id;
                    //     }

                    //     if (name != null && role != null) {
                    //       List<Map<String, dynamic>>
                    //           acompampanaidList = data
                    //               .map((e) => {
                    //                     "name": e.name,
                    //                     "role_id": e.role_id,
                    //                     "survey_id": survayId
                    //                   })
                    //               .toList();
                    //       print(inspecters);
                    //       print(
                    //           "${acompampanaidList}=====================");
                    //       AccompaniedSurvey.accompaniedSurvice(
                    //               params: acompampanaidList)
                    //           .then(
                    //         (value) {
                    //           if (value == 'success') {
                    //             Get.to(QustionPage());

                    //             survayData.remove('inspectersList');
                    //           } else {
                    //             TostClass.warningTost(context);
                    //           }
                    //         },
                    //       );
                    //     } else {
                    //       print("no accompaned ====");
                    //       Get.to(QustionPage());
                    //       survayData.remove('inspectersList');

                    //       survayData.remove('pName');
                    //     }
                    //   }
                    // });
                    Get.offAll(QustionPage());
                  },
                  buttonColor: mainred,
                  width: double.infinity,
                  height: 40.h,
                  title:
                      //  isLoding
                      //     ? CircularProgressIndicator(
                      //         color: yellow,
                      //       )
                      //     :
                      butenText(
                    title: "CONFIRM",
                    textColor: bg,
                  ),
                ),
                //   ],
                // )
              ],
            )
        //  }),
        );
         }),
        );
    //   }
    // );
  }

  Widget confirmText(String title, double size, int maxline) {
    return Text(
      title,
      style: TextStyle(
          fontWeight: FontWeight.w600, color: lightblack, fontSize: size),
      maxLines: maxline,
    );
  }
}
// QustionPage()
