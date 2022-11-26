import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fps/controller/controller/onbording_controller.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';

class OnboaringScreen extends StatelessWidget {
  const OnboaringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    onbordingController controller = Get.put(onbordingController());

    return Scaffold(
        body: PageView.builder(
      controller: controller.pagecontroller,
      onPageChanged: controller.selectedIndex,
      itemCount: controller.onbordingList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(controller.onbordingList[index].image),
                ),
              ),

            ),
            Container(
              height: 90,
              width: 150,
              color: mainred,
              child: Text("Full Support",maxLines: 2,style: onbordingText,),
             
              
            )
          ],
        );
      },
    ));
  }
}
