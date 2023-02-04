//import 'dart:convert';

import 'dart:io';

import "package:async/async.dart";
import 'package:flutter/material.dart';
import 'package:fps/controller/service/dioclint/dio_clint.dart';
import 'package:fps/view/style/style.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class CameraUplodDummy extends StatefulWidget {
  CameraUplodDummy({super.key});

  @override
  State<CameraUplodDummy> createState() => _CameraUplodDummyState();
}

class _CameraUplodDummyState extends State<CameraUplodDummy> {
  XFile? imagepath;
  String? imagename;
  String? imagedata;
  String? image;
  File? imageTemporary;

  final imagePicker = ImagePicker();

  Future<void> getImage() async {
    var getimg = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      imagename = getimg!.path;
     // image = getimg.name;
      imageTemporary = File(getimg.path);
      // image =getimg.path.split('cache/').first
      ;

      if (getimg != null) {
        setState(() {
          imagepath = getimg;
          //   GallerySaver.saveImage(getimg.path, albumName: 'flutter cam');
        });
      }
      // imagename =getimg.path;
      //     imagedata =getimg.path.split('/').last;
      // imagedata =base64Encode(imagaepath!.readAsBytesSync());
      // print(imagaepath!);
      print("${imagename!}====split image");
      print("$imageTemporary=======");
     // print("${image!}--=== image");
      print("${getimg}--=== imageyyyyyy");
    });
  }

  Future<dynamic> uplodImage() async {
    try {
      MultipartFile filePath = await MultipartFile.fromFile(
        imagename!,
          filename: imagename,
          contentType: MediaType('image', 'jpg'));
      FormData formData = FormData.fromMap({
        "shop_image": filePath,
        'survey_id': 2,
      });

      // var fomData = FormData.fromMap({
      //   //'shop_image': imagaepath,
      //   'survey_id': 2,
      //   'shop_image':
      //    await MultipartFile.fromFile(
      //     imageTemporary!.path,
      //     filename: imagename!,
      //     contentType: MediaType('image','jpg')
      //   ),

      // });
//response = await dio.post('/info', data: formData);

      print("${filePath}====iujij");
      print("${formData}====fomdata");
      print("${imagepath!.path}=========");
      print(imagepath);

      var response =
          await DioClient. dio.post("/save_survey_document", data: formData);

      print(response.data);

      print('data success');

      // }
      return "success";
    } on DioError catch (e) {
      print("Dio error");
      print("${e.error}==ii");
      print("${e.message}==ieeei");
      print("${e.response!.data}==errors");
      print(e.response!.statusMessage);

      if (e.type == DioErrorType.other) {
        return "No internet connection";
      }

      if (e.response != null) {
        return e.response!.data['message'];
      }
      return "flase";
    } catch (e) {
      print(e);
    } on SocketException {
      throw "no net work";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          h30,
          SizedBox(
            height: 200,
            width: double.infinity,
            child: imageTemporary != null
                ? Image.file(imageTemporary!)
                : Text('no images yet'),
          ),
          ElevatedButton(
              onPressed: () {
                getImage();
              },
              child: Text("choose Imagea")),
          h20,
          ElevatedButton(
              onPressed: () {
                setState(() {
                  print('called');
                  uplodImage();
                  print('called 1');
                });
              },
              child: Text("uplod Image"))
        ],
      ),
    );
  }
}
