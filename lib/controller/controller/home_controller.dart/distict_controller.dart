

// import 'package:flutter/material.dart';
// import 'package:fps/controller/controller/home_controller.dart/home_controller.dart';
// import 'package:get/get.dart';

// class DemoList extends StatelessWidget {
//   const DemoList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final HomeController districtDataController =Get.put(HomeController());
//     return Scaffold(
//       appBar: AppBar(title: Text("DEMO")),
//       body: Obx
//       (
//          () {
//           if (districtDataController.isloding.value) {
//             return CircularProgressIndicator();
            
//           }

//           return ListView.builder(
//             itemCount:10,
            
//             itemBuilder: (context, index) {
//             return ListTile(
//               leading: Text("$index"),
//               title: Text(districtDataController.districtDropdown.data![index].name!),
//               subtitle: Text("data"),

//             );
//           },);
//         }
//       ),
//     );
//   }
// }