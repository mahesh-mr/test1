import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:fps/view/style/style.dart';

Widget CustomShadowButton({
  required VoidCallback onTap,
  required Color textColor,
  required Color buttonColor,
  required double width,
  required double height,
  required String title,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(50.r),
          boxShadow: const [
            BoxShadow(
              color: grey,
              offset: Offset(4, 4),
              blurRadius: 2,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: white,
              offset: Offset(-4, -4),
              blurRadius: 2,
              spreadRadius: 1,
            ),
          ]),
      child: Center(
          child: Text(
        title,
        style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      )),
    ),
  );
}
