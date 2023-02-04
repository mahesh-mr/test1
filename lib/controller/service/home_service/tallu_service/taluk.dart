

// class TalukDataService {

//   static Future<TaluktModel?> talukService() async {
//     try {
//       var response = await Dio().get(
//         'http://18.180.86.118:5000/api/v1/taluk',
//       );
//       TaluktModel taluktModel = TaluktModel.fromJson(response.data);
//       print("${response.data}==============rff");
//       return taluktModel;
//     } on DioError catch (e) {
//       print('errorrrrr=====!');
//       print("6656566565656556565");
//       print("${e.response!.data}===========");
//       print("${e.message}=fdsfg=fd");
//     } catch (e) {
//       print(e);
//     }
//     return null;
//   }
// }
