import 'package:dio/dio.dart';
import 'package:fps/controller/controller/home_controller.dart/home_controller.dart';
import 'package:fps/controller/controller/survey_controller/position_controller.dart';
import 'package:fps/controller/service/dioclint/token/token.dart';
import 'package:fps/model/confirmOwnerModel/confirmOwnerModel.dart';
import 'package:fps/model/home_models/home_local_storage/home_local_storage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ConfirmOwnerService{
  static Future<ComfirmModel?>confirmUserService()async{ 
    //  PositionController hiveModelController =
    //   Get.put(PositionController());
 
//    HomeLocalStorage homeModel = hiveModelController.homeHiveModel[0];
//  print("${homeModel.fpsNo}===fpsno====");
// String fpsNo =homeModel.fpsNo!;
 //  final survayData = GetStorage();
    try {
 String? fpsNo = GetLocalStorage.getfpsId('fps_no');

      var response =await Dio().get('http://18.180.86.118:5000/api/v1/fps_reg_dealerfpsNo/$fpsNo');
      ComfirmModel? model =ComfirmModel.fromJson(response.data);
    //  print("${positionController.fpsValue} ===fpsno Value ==iii");
      print(response.data);
      //print("${fpsNo}=======po val");
      return model;
     } on DioError catch (e) {
      
      print("6656566565656556565  dist");
      print("${e.response!.data}===========");
      print("${e.message}=fdsfg=fd");
    } catch (e) {
      print("$e");
    }
    
    return null;
  }
}