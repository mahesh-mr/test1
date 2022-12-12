import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fps/view/screens/navebar_screen/navbar.dart';
import 'package:fps/view/screens/qution_air/widgets/custom_clippath.dart';
import 'package:fps/view/screens/screen_home/home_screen.dart';
import 'package:fps/view/screens/widgets/custom_popupmenu.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppbar({super.key,required this.height });double height;
  String cdate = DateFormat("dd-MM-yyy").format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding:  EdgeInsets.only(
            bottom:180.h,
          ),
          child: PopupmenuButtonWidgets(
            color: bg,
          ),
        )
      ],
      leading: Padding(
        padding:  EdgeInsets.only(
          bottom:180.h,
        ),
        child: IconButton(
          onPressed: () {
            Get.to( NavBarScreen());
          },
          icon: const Icon(
            Icons.home,
            color: white,
          ),
        ),
      ),
      centerTitle: true,
      title: Padding(
        padding:  EdgeInsets.only(bottom: 160.h),
        child: Column(
          children: [
            Text(
              "CIVIL SUPPLIES",
              style: appTextWhite,
            ),
            h5,
            Text(
              "FPS Inspection Application",
              style: appTextWhite,
            ),
          ],
        ),
      ),
     toolbarHeight: 230.h,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      flexibleSpace: ClipPath(
        clipper: Customshape(),
        child: Stack(
          children: [
            Container(
              height: 300.h,
              width: MediaQuery.of(context).size.width,
              color: mainred,
            ),
            Positioned(
              bottom: 70.h,
              left: 50.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'FPS Number',
                    style: fontZ_16White2,
                  ),
                  h5,
                  Text(
                    '1234567',
                    style: fontZ_16White,
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 70.h,
                right: 40.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Inspection Date',
                      style: fontZ_16White2,
                    ),
                    h5,
                    Text(
                      cdate,
                      style: fontZ_16White,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(
        double.infinity,
        height,
      );
}
