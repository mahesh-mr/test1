import 'package:flutter/material.dart';
import 'package:fps/view/style/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextForm extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator validator;

  final String title;
  final TextInputType textinputType;
  final int maxline;

  const CustomTextForm({
    super.key,
    required this.controller,
    required this.maxline,
    required this.textinputType,
    required this.title,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxline,
      controller: controller,
      validator: validator,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(5.w),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.r),
            borderSide: const BorderSide(color: lightgrey)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.r),
          borderSide: const BorderSide(color: lightgrey),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.r),
          borderSide: const BorderSide(color: red),
        ),
        hintText: title,
        fillColor: white,
        focusColor: white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.r),
        ),
      ),
    );
  }
}

class CustomPassword extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator validator;

  final String title;
  final TextInputType textinputType;
  final int maxline;
  final Widget suffixIcon;

  const CustomPassword({
    super.key,
    required this.controller,
    required this.maxline,
    required this.textinputType,
    required this.title,
    required this.validator,
    required this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxline,
      controller: controller,
      validator: validator,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.all(5.w),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.r),
            borderSide: const BorderSide(color: lightgrey)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.r),
          borderSide: const BorderSide(color: lightgrey),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.r),
          borderSide: const BorderSide(color: red),
        ),
        hintText: title,
        fillColor: white,
        focusColor: white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.r),
        ),
      ),
    );
  }
}
