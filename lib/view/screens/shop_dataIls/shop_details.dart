import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_appbar/custom_appbar.dart';
import 'package:fps/view/screens/widgets/custom_appbar.dart';

class ConformationShop extends StatelessWidget {
  const ConformationShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: CustomAppbarProfile(height: 170.h,widget: SizedBox()),

    );
  }
}