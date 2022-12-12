import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/view/style/style.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.onpressed,
    required this.value,
    required this.items,
    required this.depth,
    required this.spread,
    required this.hint,
  });
  final void Function(String?) onpressed;
  final String? value;
  final List<DropdownMenuItem<String>> items;
  final int depth;
  final double spread;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return ClayContainer(
      color: white,
      borderRadius: 50.r,
      depth: depth,
      parentColor: white,
      spread: spread,
      curveType: CurveType.none,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            hint: Text(hint),
            elevation: 6,
            borderRadius: BorderRadius.circular(20),
            alignment: AlignmentDirectional.center,
            style: TextStyle(fontWeight: FontWeight.w600, color: grey),
            value: value,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: items,
            onChanged: onpressed,
          ),
        ),
      ),
    );
  }
}

Widget CustomDropdownWidget({
 required String value,
 void Function(String?)? onpressed,
 required List<DropdownMenuItem<String>> items,
 required int depth,
 required double spread,
  required String hint,
}) {
  return ClayContainer(
    color: white,
    borderRadius: 50.r,
    depth: depth,
    parentColor: white,
    spread: spread,
    curveType: CurveType.none,
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          hint: Text(hint),
          elevation: 6,
          borderRadius: BorderRadius.circular(20),
          alignment: AlignmentDirectional.center,
          style: TextStyle(fontWeight: FontWeight.w600, color: grey),
          value: value,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: items,
          onChanged: onpressed,
        ),
      ),
    ),
  );
}
