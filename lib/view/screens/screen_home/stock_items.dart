  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/view/screens/screen_home/widgets/botomfom.dart';
import 'package:fps/view/screens/screen_home/widgets/maxlength_widgets.dart';
import 'package:fps/view/screens/screen_register/widgets/custombutton.dart';
import 'package:fps/view/style/style.dart';

class StoreItems extends StatefulWidget {
   StoreItems({super.key});

  @override
  State<StoreItems> createState() => _StoreItemsState();
}

class _StoreItemsState extends State<StoreItems> {
    final number = TextEditingController();

  final positions = TextEditingController();

  final inspectorname = TextEditingController();

  bool isVisble = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainred,

      // appBar: AppBar(),
      body: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: ListView(
                        shrinkWrap: true,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 50.h),
                            child: Text(
                              'Accompanied\nSurvey',
                              style: bottomtext,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          h25,
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Number of Accompanied Persons',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: white),
                                ),
                                h15,
                                MaxlengthTextFormWidget(
                                  controller: number,
                                  counterColor: bg,
                                  textinputType: TextInputType.number,
                                  validator: (value) {},
                                  borderColor: bg,
                                  filledColor: bg,
                                ),
                                // BotosheetForm(
                                //   controller: number,
                                //   textinputType: TextInputType.number,
                                //   validator: (value) {},
                                // ),
                                h15,
                                const Text(
                                  'Inspector Name',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: white),
                                ),
                                h15,
                                // ignore: null_check_always_fails
                                BotosheetForm(
                                  controller: inspectorname,
                                  textinputType: TextInputType.name,
                                  validator: (value) {},
                                ),
                                h15,
                                const Text(
                                  'Position',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: white),
                                ),
                                h15,
                                BotosheetForm(
                                  controller: positions,
                                  textinputType: TextInputType.text,
                                  validator: (value) {},
                                ),
                                h15,
                             
                                   TextButton(
                                      onPressed: () {
                                        // homecontroller.isVisible.value =
                                        //     !homecontroller.isVisible.value;
                                        setState(() {
                                          isVisble =!isVisble;
                                        });
                                      },
                                      child: const Text(
                                        'Others',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: white),
                                      ),
                                    ),
                                 
    
                                h15, 
                                Visibility(
                                  visible: isVisble,
                                  child:
                                                              
                                  ListView.builder(
                                    itemCount: 10,
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    
                                    itemBuilder: (context, index) {
                                    return  Padding(
                                      padding:  EdgeInsets.only(bottom: 10.h),
                                      child: BotosheetForm(
                                      controller: inspectorname,
                                      textinputType: TextInputType.name,
                                      validator: (value) {},
                                  ),
                                    );
                                  },)
                                  
                                  
                                  
                                  
                                ),h15,
                                //       Visibility(visible: isVisble, child:  BotosheetForm(
                                //   controller: inspectorname,
                                //   textinputType: TextInputType.name,
                                //   validator: (value) {},
                                // ),),
                                //        Column(
                                //         children: [
                                //              BotosheetForm(
                                //   controller: inspectorname,
                                //   textinputType: TextInputType.name,
                                //   validator: (value) {},
                                // ),
                                // h15,
                                //    BotosheetForm(
                                //   controller: inspectorname,
                                //   textinputType: TextInputType.name,
                                //   validator: (value) {},
                                // ),
                                // h15,
                                //    BotosheetForm(
                                //   controller: inspectorname,
                                //   textinputType: TextInputType.name,
                                //   validator: (value) {},
                                // ),
                                // h15,
                                //    BotosheetForm(
                                //   controller: inspectorname,
                                //   textinputType: TextInputType.name,
                                //   validator: (value) {},
                                // ),
                                // h15,
                                //    BotosheetForm(
                                //   controller: inspectorname,
                                //   textinputType: TextInputType.name,
                                //   validator: (value) {},
                                // ),
                                // h15,
                                //    BotosheetForm(
                                //   controller: inspectorname,
                                //   textinputType: TextInputType.name,
                                //   validator: (value) {},
                                // ),
                                // h15,
                                //    BotosheetForm(
                                //   controller: inspectorname,
                                //   textinputType: TextInputType.name,
                                //   validator: (value) {},
                                // ),
                                // h15,
    
                                //         ],
                                //       )),
    
                                // ShadowButton(onTap: () {
    
                                // }, buttonColor: bg, height: 40.r, textColor: mainred, width: double.infinity, title:  "SUBMIT",)
                                CustomButton(
                                  onPressed: () {},
                                  title: "SUBMIT",
                                  btncolor: white,
                                  textColor: mainred,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
    );
      
    
  }
}