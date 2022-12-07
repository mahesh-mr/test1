
// import 'package:flutter/cupertino.dart';
// import 'package:fps/model/qustion_model.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page10.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page11.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page12.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page13.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page14.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page15.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page16.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page17.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page18.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page19.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page2.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page20.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page23.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page24.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page25.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page26.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page27.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page3.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page4.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page5.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page6.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page7.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page8.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/page/page9.dart';
// import 'package:fps/view/screens/qution_air/list_qustions/withness_screen/withness_1_screen.dart';
// import 'package:fps/view/screens/qution_air/widgets/custom_radio/radiobutton.dart';
// import 'package:fps/view/screens/screen_register/widgets/custom_textform.dart';

// import 'package:get/get.dart';

// class QustionController extends GetxController {

//   final nameController =TextEditingController();
//   List<QustionModel> qustionsList = [

//     //1=================
//     QustionModel(
//       text:
//           'As per KTPDS(Control) order 2021 para 44, Was the FPS open during inspection?',
//       headaLine: 'Start Survey',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page1());
//       },
//     ),
// //2=======================

//         QustionModel(
//       text:
//           'Name of person who controlled FPS at the time of inspection and relationship with FPS?.',
//       headaLine:'',
//       widget:   CustomTextForm(
//               controller: nameController,
//               maxline: 1,
//               textinputType: TextInputType.text,
//               title: '',
//               validator: (value) {},
//             ),
//       onPressed: () {
//         Get.to(Page2());
//       },
//     ),
//     //3===========================
//         QustionModel(
//       text:
//           'Are the necessary records and registers maintained in the FPS as per KTPDS (Control) Order 2021 para 42 (1)(XI)?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page3());
//       },
//     ),
//     //4===================================================
//         QustionModel(
//       text:
//           'As per KTPDS (Control) Order 2021 para 42 (1)(XII) F, Is PS and surroundings kept clean?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page4());
//       },
//     ),
//     //5=================================================
//         QustionModel(
//       text:
//           'Have all receipts of stock available at the time of inspection been received?',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page5());
//       },
//     ),
//     //6=============================================
//         QustionModel(
//       text:
//           'As per KTPDS (Control) Order 2021 para 42 (1) have the items to be displayed in FPS?',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page6());
//       },
//     ),
//     //7=============================================
//         QustionModel(
//       text:
//           'If so how many cards? ( Enter Card Numbers ).',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page7());
//       },
//     ),
//     //8==========================================
//         QustionModel(
//       text:
//           'Are nameboards of the prescribed format as per KTPDS (Control)Order 2021 Para 42(1) (XXIV) displayed?',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page8());
//       },
//     ),
//     //9===========================================
//         QustionModel(
//       text:
//           'Was necessary facility and cooperation available for inspection under KTPDS (Control) Order 2021 para 42 (1) (XXI)?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page9());
//       },
//     ),
//     //10====================================================
//         QustionModel(
//       text:
//           'As per KTPDS (Control) Order 2021 para 42 (1) (III) does the trader treat the beneficiaries with respect?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page10());
//       },
//     ),
//     //11=============================
//         QustionModel(
//       text:
//           'As per KTPDS (Control) Order 2021 para 42 (1) (XIII) whether the food grains were destroyed for the purpose of inspection?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page11());
//       },
//     ),
//     //12======================================
//         QustionModel(
//       text:
//           'According to KTPDS (Control) Order 2021 para 32(1) is kerosene stored in a separate room?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page12());
//       },
//     ),
//     //13========================================
//         QustionModel(
//       text:
//           'As per KTPDS (Control) Order 2021 para 42 (2) (III) Is correct amount of ration distributed to the beneficiary?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page13());
//       },
//     ),
//         //14========================================
//         QustionModel(
//       text:
//           'Under KTPDS (Control) Order 2021 para 42 (2) (V) are unauthorized persons interfering in the activities of FPS?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page14());
//       },
//     ),
//         //15========================================
//         QustionModel(
//       text:
//           'According to KTPDS (Control) Order 2021 para 42 (1) (VII) FPS. Are working hours strictly followed?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page15());
//       },
//     ),
//         //16========================================
//         QustionModel(
//       text:
//           'As per KTPDS (Control) Order 2021 para 42 (1) (VII) has the FPS been open on holidays without permission?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page16());
//       },
//     ),   
//         //17========================================
//      QustionModel(
//       text:
//           'As per KTPDS (Control) Order 2021 para 42 (1) (VI) Is food grains stored in a place not mentioned in the licence?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page17());
//       },
//     ),  
//         //18========================================
//       QustionModel(
//       text:
//           'As per KTPDS (Control) Order 2021 para 42 (1) (II) while distributing ration to the beneficiaries, are the bills properly paid?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page18());
//       },
//     ),    
//         //19========================================
//     QustionModel(
//       text:
//           'Are measuring / weighing instruments sealed as per KTPDS (Control) Order 2021 para 42 (1) (IV)?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page19());
//       },
//     ),  
//         //20========================================
    
//       QustionModel(
//       text:
//           'As per KTPDS (Control) Order 2021 para 42 (1) (II) is excessive price charged from beneficiaries for ration goods?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Pages20());
//       },
//     ),   
//     //21==================================
//      QustionModel(
//       text:
//           'As per KTPDS (Control) Order 2021 para 43 (IV) is e-pos machine removed from FPS without permission?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page21());
//       },
//     ),
//     //22============================
//         QustionModel(
//       text:
//           'As per KTPDS (Control) Order 2021 para 42 (2) (VI) goods have been procured or distributed through FPS without permission from Civil Supplies Department?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page22());
//       },
//     ), 
//     //23=============================
    
//        QustionModel(
//       text:
//           'As per KTPDS (Control) Order 2021 para 42 (2) (VIII) willfully damage e-POS machine?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page23());
//       },
//     ), 
//     //24=========================================
    
//        QustionModel(
//       text:
//           'As per KTPDS (Control) Order 2021 para 42 (2) (X) has unusable ration material been distributed?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(Page24());
//       },
//     ),  
//     //25===========================================
    
//       QustionModel(
//       text:
//           'As per KTPDS (Control) Order 2021 para 43 (I) has distribution of ration goods been done manually other than through e-pos without permission?.',
//       headaLine: '',
//       widget: GenderSelector(),
//       onPressed: () {
//         Get.to(WitnessScreen1());
//       },
//     ),   
//   ];
// }


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class QustionController extends GetxController{

    var selectedIndex = 0.obs;
 // bool get isLastPage => selectedIndex.value == onbordingLists.length - 1;
  var pagecontroller = PageController();

  forwerdAction() {
    //bool isvaliod = fomliey.v.
    // if (isLastPage) {
    // //  Get.offAll(LoginScreen());
    // } else {
    
      pagecontroller.nextPage(duration: 550.milliseconds, curve: Curves.ease);
    // }
  }
barScroll(){
   double v=0;
  for (int i = 0; i < selectedIndex.value; i++) {
      v= v+0.04;
 
    print(v);
  }
}



}