import 'package:dio/dio.dart';
import 'package:fps/controller/service/dioclint/dio_clint.dart';
import 'package:fps/controller/service/dioclint/token/token.dart';
import 'package:fps/model/profile/profile_model.dart';
import 'package:get_storage/get_storage.dart';

class ProfileService {
  static Future<ProfileModel?> profileService() async {
    String? token = GetLocalStorage.getUserIdAndToken('token');
    try {
      String? userId = GetLocalStorage.getUserIdAndToken('id');
      var response = await DioClient.dio.get(
        '/profile/$userId!',
        options: Options(
          headers: {"Authorization": "Bearer $token"},
        ),
      );
      ProfileModel? model = ProfileModel.fromJson(response.data);
      print(userId);
      print(model);
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
