import 'package:fps/controller/service/profie_service/profile_service.dart';
import 'package:fps/model/profile/profile_model.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{

  RxBool loding = true.obs;
  ProfileModel? profileModel =ProfileModel();

  Future <ProfileModel?>getProfileService()async{
try {
  var data =await  ProfileService.profileService();
 loding.value = false;
      return data;
    } catch (e) {
      Get.snackbar('oopz', ' $e');
      print(e);
      print('catch bloc called');
      loding.value = false;
    }
  return null;
  }
  



  @override
  void onInit() {
   getProfileService().then((value) => profileModel=value);
    super.onInit();
  }
}