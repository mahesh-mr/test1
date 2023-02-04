import 'package:flutter/cupertino.dart';
import 'package:motion_toast/motion_toast.dart';

class TostClass {
  static successTost(BuildContext context,  String title,) {
    MotionToast.success(
      description: Text(title),
      title: Text('success'),
    ).show(context);
  }

    static errorTost(BuildContext context, String description, String title,) {
    MotionToast.error(
      description: Text(title),
      title: Text(description),
    ).show(context);
  }
   static warningTost(BuildContext context, ) {
    MotionToast.warning(
      description: Text("Please fill the all feilds"),
      title: Text("Warning" ),
    ).show(context);
  }
  static customWarningTost(BuildContext context,String message ) {
    MotionToast.warning(
      description: Text( "Please select ${message}"),
      title: Text("Warning"),
    ).show(context);
  }
 

}
