import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImageUplodController extends GetxController {
  String? imagePath;
  String? siganatureImagePath;
  final ImagePicker imagePicker = ImagePicker();
  final ImagePicker signimagePicker = ImagePicker();
  //plce=================================

  Future placePicImage() async {
    var image = await imagePicker.pickImage(
        source: ImageSource.camera,
        imageQuality: 40,
       );
    if (image == null) return;
    final imageTemporary = image.path;
    imagePath = imageTemporary;
    print("$imageTemporary======= image");
    // Get.back();
    update();
  }

  //signature==================================
  Future sinaturePicImage() async {
    XFile? image = await signimagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 40, maxHeight:40,
        maxWidth: 480);
    if (image == null) return;
    final imageTemporary = image.path;
    siganatureImagePath = imageTemporary;
    print("$imageTemporary======= image");
    // Get.back();
    update();
  }
}
