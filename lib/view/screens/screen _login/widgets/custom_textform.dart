import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:fps/controller/controller/authController/auth_controller.dart';
import 'package:fps/view/style/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


//email==========================================================
//===============================================================

Widget CustomFomField(
  String titles,
  TextInputType textinputType,
  int maxline,
  FormFieldValidator validator,
  TextEditingController controller,
) {
  return ClayContainer(
    color: white,
    borderRadius: 50.r,
    depth: 40,
    parentColor: white,
    spread: 2,
    child: TextFormField(
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
        hintText: titles,
        fillColor: white,
        focusColor: white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.r),
        ),
      ),
    ),
  );
}



//password========================================================
//================================================================

final _passwodController = TextEditingController();
final authcontoller = Get.put(AuthController());
Widget CustomPasswordField() {
  return Obx(() {
    return ClayContainer(
      color: white,
      borderRadius: 50.r,
      depth: 40,
      parentColor: white,
      spread: 2,
      child: TextFormField(
        obscureText: authcontoller.isvisible.value,
        controller: _passwodController,
        validator: (value) {
          //  authController.isvisible.value=!authController.isvisible.value;
        },
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              authcontoller.isvisible.value = !authcontoller.isvisible.value;
            },
            child: authcontoller.isvisible.value
                ? const Icon(
                    Icons.visibility,
                    color: mainred,
                  )
                : const Icon(
                    Icons.visibility_off,
                    color: mainred,
                  ),
          ),
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
          hintText: "Password",
          fillColor: white,
          focusColor: white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.r),
          ),
        ),
      ),
    );
  });
}
