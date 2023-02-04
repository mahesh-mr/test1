// // import 'dart:convert';
// // import 'dart:math';

// // import 'package:dio/dio.dart';
// // import 'package:flutter/material.dart';
// // import 'package:fps/model/home_models/distric_model/district_model.dart';

// // import 'package:fps/view/screens/dummy/dummy_models/d_dummy.dart';
// // import 'package:fps/view/screens/test/test.dart';
// // import 'package:fps/view/style/style.dart';

// // import 'package:get/get.dart';
// // import 'package:http/http.dart' as http;


// // TestModel testModelFromJson(String str) => TestModel.fromJson(json.decode(str));

// // String testModelToJson(TestModel data) => json.encode(data.toJson());

// // class TestModel {
// //   TestModel({
// //     this.code,
// //     this.data,
// //     this.success,
// //   });

// //   int? code;
// //   List<Datum>? data;
// //   bool? success;

// //   factory TestModel.fromJson(Map<String, dynamic> json) => TestModel(
// //         code: json["code"],
// //         data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
// //         success: json["success"],
// //       );

// //   Map<String, dynamic> toJson() => {
// //         "code": code,
// //         "data": List<dynamic>.from(data!.map((x) => x.toJson())),
// //         "success": success,
// //       };
// // }

// // class Datum {
// //   Datum({
// //     this.id,
// //     this.name,
// //   });

// //   int? id;
// //   String? name;

// //   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
// //         id: json["id"],
// //         name: json["name"],
// //       );

// //   Map<String, dynamic> toJson() => {
// //         "id": id,
// //         "name": name,
// //       };
// // }




// // // class DummyServices {
// // //   static Future<Dmodel?> districServices() async {
// // //     try {
// // //       var response =
// // //           await Dio().get("http://192.168.1.5:3000/api/get_allDistrict");

// // //       Dmodel districtdata = dmodelFromJson(response.data);
// // //       print("${response.data}==============");

// // //       return districtdata;
// // //     } on DioError catch (e) {
// // //       print('errorrrrr=====!');
// // //       print("6656566565656556565  dist");
// // //       print("${e.response!.data}===========");
// // //       print("${e.message}=fdsfg=fd");
// // //     } catch (e) {
// // //       print("${e}=====33=");
// // //     }
  




// // //   }
// // // }


// // // class ApiService{




// // //   static  getDistrict() async {
// // //   var res = await http.get(Uri.parse('http://192.168.1.7:3000/api/get_allDistrict'));
// // //   if (res.statusCode == 200 || res.statusCode == 201) {
// // //     DistrictModel districtModel = DistrictModel.fromJson(jsonDecode(res.body));
// // //     print(districtModel);
// // //     return districtModel;
// // //   }

// // //     }


// // // // static Future<DistrictModel?>fechapi()async
// // // // {
// // // // var response=await httpClint.get(Uri.parse('http://192.168.1.7:3000/api/get_allDistrict'));
// // // // if (response.statusCode ==200) {
// // // //  var jsonstring = response.body;
// // // //  print(jsonstring);
// // // //  return districtModelFromJson(jsonstring);
 
  
// // // // }else{
// // // //   print('eee');
// // // //   return null;
// // // // }
// // // // }

// // // }

// // // class DemmyController extends GetxController {
// // // var districtDropdown = <AllDistrictlist>[].obs;
// // // var loding =true.obs;

// // // // }
  
// // //  Future districtControllersList() async {
  
// // //     var res = await http.get(Uri.parse('http://192.168.1.7:3000/api/get_allDistrict'));
// // //   if (res.statusCode == 200 || res.statusCode == 201) {
// // //     DistrictModel districtModel = DistrictModel.fromJson(jsonDecode(res.body));
// // //   districtDropdown.value =districtModel.data.allDistrictlistAllDistrictlist;
// // // loding.value=false;
    

   
// // //   }else{
// // //     return Text('data');
// // //   }
     
// // // }
// // // @override
// // //   void onInit() {
// // //    districtControllersList();
// // //     super.onInit();
// // //   }


// // // }

// // // class DropList extends StatelessWidget {
// // //   const DropList({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     DemmyController controller = Get.put(DemmyController());

// // //     return Scaffold(
// // //       body: GetBuilder<DemmyController>( 
// // //         init: DemmyController(),
// // //         builder: (controller) {

// // //         if (controller.loding.value) {
// // //           Center(child: CircularProgressIndicator(),);
// // //         }
// // //         return ListView.builder(
// // //           itemCount: controller.districtDropdown.length,
// // //           itemBuilder: (context, index) {
// // //             return ListTile(
// // //               leading: Text(controller.districtDropdown[index].id
// // //                   .toString()),
// // //               title:
// // //                   Text(controller.districtDropdown[index].name),
// // //             );
// // //           },
// // //         );
// // //       }),
// // //     );
// // //   }
// // // }

// // var disapi = 'http://192.168.1.7:8080/api/get_allDistrict';
// // var talapi = 'http://192.168.1.7:3000/api/get_allTaluk';
// // var firapi = 'http://192.168.1.7:3000/api/get_allFirka';
// // //distric===============
// //  getDistrict() async {
// //   print('fjgkjgjk');
  
// //  var
// //    response = await http.get(Uri.parse(disapi));
// //   print(response);
// //   if (response.statusCode == 200 || response.statusCode == 201) {
// //     TestModel districtModel =testModelFromJson(response.body) ;
// //     print(districtModel);
// //     return districtModel;
// //   }else{
// //     print(e);
// //   }
// // }




// // //taluk==============
// // getTaluk() async {
// //   var res = await http.get(Uri.parse(talapi));
// //   if (res.statusCode == 200) {
// //     Tmodel districtModel = tmodelFromJson(res.body);

// //     return districtModel;
// //   }
// // }

// // //firka==================
// // getFirka() async {
// //   var res = await http.get(Uri.parse(firapi));
// //   if (res.statusCode == 200) {
// //     Fmodel districtModel = fmodelFromJson(res.body);

// //     return districtModel;
// //   }
// // }

// // class DummyDropdown extends StatefulWidget {
// //   const DummyDropdown({super.key});

// //   @override
// //   State<DummyDropdown> createState() => _DummyDropdownState();
// // }

// // class _DummyDropdownState extends State<DummyDropdown> {
// // List<Datum> districtList = [];
// //   List<AllFirka> firkaList = [];
// //   List<AllTaluk> talukList = [];
// //   List<AllTaluk> tempTalukList = [];
// //   List<AllFirka> tempFrikaList = [];

// //   String? talukdataValue;
// //   String? districtdataValue;
// //   String? firkadataValue;
// //   //var isloding = true;

// //   populateDropdowns() async {
// //     TestModel? dmodel = await getDistrict();
// //     Tmodel tmodel = await getTaluk();
// //     Fmodel fmodel = await getFirka();

// //     setState(() {
// //  //districtList = dmodel!.data!.allDis!;
// //       firkaList = fmodel.firkadata!.allFirka!;
// //       talukList = tmodel.talukdata!.allTaluk!;
// //     });
// //   }

// //   @override
// //   initState() {
// //     populateDropdowns();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           crossAxisAlignment: CrossAxisAlignment.center,
// //           children: [
// //             DropdownButton(
// //                 hint: Text("select Distric"),
// //                 value: districtdataValue,
// //                 items: firkaList.map((e) {
// //                   return DropdownMenuItem(
// //                     value:e.id.toString(),
// //                     child: Text(e.name!),
// //                   );
// //                 }).toList(),
// //                 onChanged: (newValues) {
// //                   setState(() {
// //                    // talukdataValue = null;
// //                    districtdataValue = newValues.toString();
// //                     // tempTalukList = talukList
// //                     //     .where((element) =>
// //                     //         element.districtId.toString() ==
// //                     //         districtdataValue.toString())
// //                     //     .toList();
// //                   });
// //                 }),
// //             h30,
// //             DropdownButton(
// //                 hint: Text("select"),
// //                 value: talukdataValue,
// //                 items: tempTalukList.map((e) {
// //                   return DropdownMenuItem(
// //                     child: Text(e.name!),
// //                     value: e.id.toString(),
// //                   );
// //                 }).toList(),
// //                 onChanged: (newValue) {
// //                   setState(() {
// //                     firkadataValue = null;
// //                     talukdataValue = newValue.toString();
// //                     tempFrikaList = firkaList
// //                         .where((element) =>
// //                             element.talukId.toString() ==
// //                             talukdataValue.toString())
// //                         .toList();
// //                   });
// //                 }),
// //             h30,
// //             DropdownButton(
// //                 hint: Text("select"),
// //                 value: firkadataValue,
// //                 items: tempFrikaList.map((e) {
// //                   return DropdownMenuItem(
// //                     child: Text(e.name!),
// //                     value: e.id.toString(),
// //                   );
// //                 }).toList(),
// //                 onChanged: (newValue) {
// //                   setState(() {
// //                     //firkadataValue = null;
// //                     firkadataValue = newValue.toString();
// //                   });
// //                 }),
// //           ],
// //         ),
// //       ),
// //     );
// //   }



// // // class Demo extends StatelessWidget {
// // //   const Demo({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: ListView.builder(
// // //         itemCount: 10,
        
// // //         itemBuilder: (context, index) {
// // //         return ListTile(leading: Text("data"),
// // //         title:Text("data") ,
        
// // //         );
// // //       },),
// // //     );
// // //   }
// // // }
// // }

// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   @override
//   MyHomePageState createState() {
//     return new MyHomePageState();
//   }
// }

// class MyHomePageState extends State<MyHomePage> {
//   final _text = TextEditingController();
//   bool _validate = false;

//   @override
//   void dispose() {
//     _text.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TextField Demo'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text('Error Showed if Field is Empty on Submit button Pressed'),
//             TextField(
//               controller: _text,
//               decoration: InputDecoration(
//                 labelText: 'Enter the Value',
//                 errorText: _validate ? 'Value Can\'t Be Empty' : null,
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   _text.text.isEmpty ? _validate = true : _validate = false;
//                 });
//               },
//               child: Text('Submit'),
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.blueAccent,//button background color
//                 onPrimary: Colors.white,//button text color
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(25),
//                 )
//               )
//             )
//           ],
//         ),
//       ),
//     );
//   }


//    Widget _buildNickNameField(BuildContext context) {
//     return TextFormField(
//       textInputAction: TextInputAction.next,
//       textAlign: TextAlign.end,
//       onFieldSubmitted: (v){
//         FocusScope.of(context).requestFocus(myFocusNodeFirstName);
//       },
//       validator: (val) {
//         if (val.isEmpty) {
//           return 'NickName is necessary.';
//         }
//         if (val.length < 2) {
//           return 'NickName too short..';
//         }
//         return null;
//       },
//       onSaved: (String val) {
//         setState(() {
//           _nickName = val;
//         });
//       },
//       focusNode: _myFocusNodeNickName,
//       controller: _nickNameController,
//       keyboardType: TextInputType.text,
//       style: TextStyle(
//           fontSize: 16.0,
//           color: Colors.black,
//           fontWeight: FontWeight.bold
//       ),
//       decoration: InputDecoration(
//         border: InputBorder.none,
//         hintText: "NickName",
//         hintStyle: TextStyle(
//             fontSize: 17.0),
//         helperText: "",
//         helperStyle: TextStyle(
//             fontFamily: 'SF-Pro-Display',
//             fontSize: 14.0,
//             fontWeight: FontWeight.bold
//         ),
//         errorStyle: TextStyle(
//             fontFamily: 'SF-Pro-Display',
//             fontSize: 14.0,
//             fontWeight: FontWeight.bold,
//         ),

//       ),
//     );
//   }
// }