import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:fps/view/style/style.dart';

class ShadowButton extends StatelessWidget {
  const ShadowButton({
    Key? key,
    required this.onTap,
    required this.buttonColor,
    required this.height,
    required this.textColor,
    required this.width,required this.title
  }) : super(key: key);
  final VoidCallback onTap;
  final Color textColor;
  final Color buttonColor;
  final double width;
  final double height;
  final String title;

  @override
  Widget build(BuildContext context) {
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
}