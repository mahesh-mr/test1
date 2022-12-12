import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/model/dropdown_model/dropdow.dart';
import 'package:fps/view/screens/screen_home/widgets/botomfom.dart';
import 'package:fps/view/screens/screen_home/widgets/custom_inspection_form.dart';
import 'package:fps/view/screens/screen_register/widgets/custombutton.dart';
import 'package:fps/view/screens/widgets/custom_dropdown.dart';
import 'package:fps/view/style/style.dart';

class StoreItems extends StatefulWidget {
  StoreItems({super.key});

  @override
  State<StoreItems> createState() => _StoreItemsState();
}

class _StoreItemsState extends State<StoreItems> {
  var positionItems = [
    'POSITION',
    'POSITION 1',
    'POSITION 2',
    'POSITION 3',
    'POSITION 4',
    'POSITION 5',
    'POSITION 6'
  ];
  String positionValue = 'POSITION';

  final numberController = TextEditingController();
  final positions = TextEditingController();
  final inspectorname = TextEditingController();
  int? count;

  bool isVisble = false;

  List<InspectorModel> inspectersList=[];
  List<TextEditingController>nameControllersList=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainred,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(top: 40.h),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Accompanied\nSurvey',
                  style: bottomtext,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            h50,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: const Text(
                'Number of Accompanied Persons',
                style: TextStyle(fontWeight: FontWeight.bold, color: white),
              ),
            ),
            h15,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: BotosheetForm(
                onChanged: (p0) {
                  setState(() {
                    count = int.parse(numberController.text);
                    nameControllersList=List.generate(count!, (index) => TextEditingController());
                    inspectersList=List.generate(count!, (index) => InspectorModel());
                  });
                },
                controller: numberController,
                textinputType: TextInputType.number,
                validator: (value) {},
              ),
            ),
            h25,
            divider(),
            h10,
            count == null
                ? dummy()
                : LimitedBox(
                    maxHeight: 220.h,
                    maxWidth: 360.w,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: count!,
                      itemBuilder: (context, index) {
                       
                        return SizedBox(
                          width: 360.w,
                          height: 220.h,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                h15,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Wrap(
                                      children: [
                                        CustoName(name: 'Inspector Name'),
                                        w170,
                                        Text(
                                          "${index + 1}/$count",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: white),
                                        )

                                      ],
                                    ),
                                    h15,
                                    InspectorNameForm(
                                      
                                      onChanged: (value) {
                                      setState(() {
                                        inspectersList[index].inspectorName=value;
                                      });
                                    },
                                      controller: nameControllersList[index],
                                      validator: (value) {},
                                    ),
                                  ],
                                ),
                                h25,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustoName(name: 'Position'),
                                    h15,
                                    dropdown(index),
                                  ],
                                ),
                              ]),
                        );
                      },
                    ),
                  )

            //models================================================
            //======================================================

            ,
            h10,
            divider(),
            h25,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: CustomButton(
                textColor: mainred,
                onPressed: () {
                  for (var element in inspectersList) {
                    print(element.position);
                    print(element.inspectorName);
                    
                    
                  }
                 
                },
                title: "SUBMIT",
                btncolor: white,
                //   textColor: mainred,
              ),
            ),
          ]),
        ),
      ),
    );
  }

  SizedBox dropdown(int index) {
    return SizedBox(
        width: 300.w,
        child:
        ClayContainer(
    color: white,
    borderRadius: 50.r,
    depth: 0,
    parentColor: white,
    spread: 0,
    curveType: CurveType.none,
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          hint: Text('POSITION'),
          elevation: 6,
          borderRadius: BorderRadius.circular(20),
          alignment: AlignmentDirectional.center,
          style: TextStyle(fontWeight: FontWeight.w600, color: grey),
         value: inspectersList[index].position,
          icon: const Icon(Icons.keyboard_arrow_down),
         items: positionItems.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
          onChanged: (String? newValue) {
              setState(() {
                inspectersList[index].position = newValue!;
              });
            },
        ),
      ),
    ),
  ));
        
        
        
        
        //  CustomDropdown(
        //     onpressed: (String? newValue) {
        //       setState(() {
        //         inspectersList[index].position = newValue!;
        //       });
        //     },
        //     value: inspectersList[index].position,
        //     items: positionItems.map((String items) {
        //       return DropdownMenuItem(
        //         value: items,
        //         child: Text(items),
        //       );
        //     }).toList(),
        //     depth: 0,
        //     spread: 0));
  }

  SizedBox dummy() {
    return SizedBox(
      //   color: blue,
      width: double.infinity,
      height: 220.h,
      child: const Center(
        child: Text(
          'Plese enter number of\naccompanied persons',
          style: TextStyle(fontWeight: FontWeight.bold, color: white),
        ),
      ),
    );
  }

  Padding divider() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Divider(thickness: 1.w, color: white),
    );
  }
}

class CustoName extends StatelessWidget {
  CustoName({
    Key? key,
    required this.name,
  }) : super(key: key);
  String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(fontWeight: FontWeight.bold, color: white),
    );
  }
}
