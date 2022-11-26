import 'package:flutter/material.dart';
import 'package:fps/view/style/style.dart';

class SurvayBackButton extends StatelessWidget {
  const SurvayBackButton({
    Key? key,

    required this.width,
    required this.child,
    required this.height,
    required this.onPressed,
  }) : super(key: key);

  final double width;

final VoidCallback onPressed;
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightblack,
        minimumSize: Size(width, 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed:onPressed,
      child: child,
    );

   
    // );
  }
}
