import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/view/style/style.dart';

class CustomSurveyTextForm extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator validator;
  final String title;
  final TextInputType textinputType;

  const CustomSurveyTextForm({
    super.key,
    required this.controller,
    required this.textinputType,
    required this.title,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: grey3,
          ),
        ),
        h10,
        ClayContainer(
          color: white,
          borderRadius: 50.r,
          depth: 40,
          parentColor: white,
          spread: 2,
          child: TextFormField(
            keyboardType: textinputType,
            controller: controller,
            validator: validator,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5.w),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.r),
                borderSide: const BorderSide(color: lightgrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.r),
                borderSide: const BorderSide(color: lightgrey),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.r),
                borderSide: const BorderSide(color: red),
              ),
              fillColor: white,
              focusColor: white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.r),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
