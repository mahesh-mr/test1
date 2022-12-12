import 'package:get/get.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';


class ImageUplodController extends GetxController{
  String? imagePath;
  String? siganatureImagePath;
 
  final ImagePicker imagePicker = ImagePicker();
    final ImagePicker SignimagePicker = ImagePicker();
  Future placePicImage(ImageSource imageSource)async {
    XFile? image = await imagePicker.pickImage(source: imageSource);
    if (image == null) return;
    final imageTemporary= File(image.path);
    imagePath =imageTemporary.path;
    // Get.back();
    update();
  
    
  }
   Future sinaturePicImage(ImageSource imageSource)async {
    XFile? image = await SignimagePicker.pickImage(source: imageSource);
    if (image == null) return;
    final imageTemporary= File(image.path);
    siganatureImagePath =imageTemporary.path;
   // Get.back();
    update();
  
    
  }







}