// ignore: must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:fps/view/style/style.dart';

class CustomButtonTest extends StatelessWidget {
  CustomButtonTest({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      padding: const EdgeInsets.all(1),
      style: const NeumorphicStyle(
        color: Color(0xFFDCE5F6),
        depth: 10,
        intensity: 0.8,
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.circle(),
      ),
      child: NeumorphicButton(
        minDistance: -10,
        onPressed: () {},
        padding: const EdgeInsets.all(5),
        style: const NeumorphicStyle(
          color: Color(0xFFE3ECFD),
          depth: 10,
          intensity: 0.8,
          shape: NeumorphicShape.convex,
          boxShape: NeumorphicBoxShape.circle(),
        ),
        child: IconButton(
          onPressed: onTap,
          icon: Icon(icon),
          color: grey,
        ),
      ),
    );
  }
}
