import 'package:flutter/material.dart';
import 'package:fps/controller/controller/splash_controller.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (_) {
          return Scaffold(
            body: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 450,
                  decoration: const BoxDecoration(
                    color: mainred,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(100)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/7.png'),
                            ),
                          ),
                        ),
                        Text(
                          'CIVIL SUPPLIES',
                          style: headText,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                      height: 50,
                      width: 250,
                      child: Column(
                        children: [
                          Text(
                            "mobile apps for inspection ",
                            style: headline,
                            maxLines: 2,
                          ),
                          Text(
                            "of ration shops",
                            style: headline,
                          ),
                        ],
                      )),
                )
              ],
            ),
          );
        });
  }
}
