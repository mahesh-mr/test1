import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/view/screens/qution_air/list_qustions/withness_screen/appbar/witness_appbar.dart';
import 'package:fps/view/screens/screen_register/widgets/custom_textform.dart';
import 'package:fps/view/screens/widgets/shadow_button.dart';
import 'package:fps/view/style/style.dart';

class RemarkScreeen extends StatelessWidget {
  RemarkScreeen({super.key});

  final remarkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WitnessAppbar(
          text: 'Check Register',
          subText:''),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            children: [
              Text(
                'Remarks',style: fontZ_30_black,
              ),
              h15,
              Text('Leave your comments below',style: fontZ_14_Grey,),
              h25,
              ClayContainer(
      color: white,
      borderRadius: 20.r,
      depth: 40,
      parentColor: white,
      spread: 2,
      child: TextFormField(
        maxLines: 10,
        controller: remarkController,
        validator: (value) {
          
        },
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(5.w),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: const BorderSide(color: lightgrey)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: const BorderSide(color: lightgrey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: const BorderSide(color: red),
          ),
          hintText: '',
          fillColor: white,
          focusColor: white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
      ),
    ),



              // CustomTextForm(
              //   controller: remarkController,
              //   maxline: 10,
              //   textinputType: TextInputType.text,
              //   title: '',
              //   validator: (value) {},
              // ),
              h50,
              ShadowButton(
                  onTap: () {},
                  buttonColor: mainred,
                  height: 40.h,
                  textColor: bg,
                  width: double.infinity,
                  title: 'SUBMIT')
            ],
          ),
        ),
      ),
    );
  }
}
