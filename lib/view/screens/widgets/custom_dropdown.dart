import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/view/style/style.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown(
      {super.key,
      required this.onpressed,
      required this.value,
      required this.items});
  final void Function(String?) onpressed;
  final String value;
  final List<DropdownMenuItem<String>> items;

  @override
  Widget build(BuildContext context) {
    return ClayContainer(
      color: white,
      borderRadius: 50.r,
      depth: 40,
      parentColor: white,
      spread: 6,
      curveType: CurveType.none,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
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
