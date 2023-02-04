
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fps/controller/service/dioclint/dio_clint.dart';
import 'package:fps/controller/service/dioclint/token/token.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';

class RemarkService {
  static Future<dynamic> remarkService({
    required String surveyId,
    required String remarks,
    
  }) async { String? token = GetLocalStorage.getUserIdAndToken('token');
    try {
      var response = await
     DioClient.dio.post('/save_remark',data: { "survey_id": surveyId,
        "remarks": remarks,
       
      },options: Options(
          headers: {"Authorization": "Bearer $token"},
        ),
      );
      
      
      
      print(response.data);

      return "success";
    } on DioError catch (e) {
      print("Dio error");
      print("${e.error}==ii");
      print("${e.message}==ieeei");
      print("${e.response!.data}==errors");
      print(e.response!.statusMessage);

      Get.snackbar(
        'Warning',
        e.response!.data['SocketException'].toString(),
        backgroundColor: yellow,
      );

      if (e.type == DioErrorType.other) {
        Get.snackbar(
          'Warning',
          'No internet connection.',
          backgroundColor: white,
        );

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
}
