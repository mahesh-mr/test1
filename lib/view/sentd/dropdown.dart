import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fps/view/style/style.dart';

class InspectorScreen extends StatefulWidget {
  InspectorScreen({super.key});

  @override
  State<InspectorScreen> createState() => _InspectorScreenState();
}

class _InspectorScreenState extends State<InspectorScreen> {
  var positionItems = [
    'POSITION',
    'POSITION 1',
    'POSITION 2',
    'POSITION 3',
    'POSITION 4',
    'POSITION 5',
    'POSITION 6'
  ];
  String? positionValue;

  final numberController = TextEditingController();
  final positions = TextEditingController();
  final inspectorname = TextEditingController();
  int? count;

  bool isVisble = false;

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
              padding: const EdgeInsets.only(top: 50),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Accompanied\nSurvey',
                  style: bottomtext,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            h65,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Number of Accompanied Persons',
                style: TextStyle(fontWeight: FontWeight.bold, color: white),
              ),
            ),
            h15,
            nofPersons(),
            h25,
            divider(),
            h10,
            count == null
                ? nullBox()
                : SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(count!, (index) {
                        List<TextEditingController> textController =
                            List.generate(
                                count!, (index) => TextEditingController());

                        return SizedBox(
                          width: 360,
                          height: 250,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                h15,
                                nameField(index, textController),
                                h25,
                                positionDropdown(),
                              ]),
                        );
                      }),
                    ),
                  ),
            h10,
            divider(),
            h25,
            submitButton(),
          ]),
        ),
      ),
    );
  }

  //submitButton================================================================
  //============================================================================

  Padding submitButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 10,
          minimumSize: const Size(double.infinity, 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          backgroundColor: bg,
        ),
        onPressed: () {},
        child: const Text(
          "SUBMIT",
          style: TextStyle(color: mainred, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  //position============================================================
  //====================================================================

  Column positionDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Position',
          style: TextStyle(fontWeight: FontWeight.bold, color: white),
        ),
        h15,
        SizedBox(
          width: 300,
          child: ClayContainer(
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
                child: DropdownButton<String>(
                  hint: Text(" POSITION"),
                  elevation: 6,
                  borderRadius: BorderRadius.circular(20),
                  alignment: AlignmentDirectional.center,
                  style:
                      const TextStyle(fontWeight: FontWeight.w600, color: grey),
                  value: positionValue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: positionItems.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (
                    String? newValue,
                  ) {
                    String checkilValue = 'POSITION';
                    if (checkilValue == 'POSITION') {
                      setState(() {
                        positionValue = newValue!;
                      });
                    }
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

//inspectorName=======================================================
//====================================================================



  Column nameField(int index, List<TextEditingController> textController) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          children: [
            const Text(
              'Inspector Name',
              style: TextStyle(fontWeight: FontWeight.bold, color: white),
            ),
            w170,
            Text(
              "${index + 1}/$count",
              style: const TextStyle(fontWeight: FontWeight.bold, color: white),
            )
          ],
        ),
        h15,
        SizedBox(
          width: 300.w,
          child: TextFormField(
            onChanged: (value) {},
            keyboardType: TextInputType.name,
            controller: textController[index],
            validator: (value) {},
            decoration: InputDecoration(
                counterStyle: const TextStyle(color: bg),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(color: bg)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(color: bg),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(color: red),
                ),
                fillColor: bg,
                focusColor: bg,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                )),
          ),
        ),
      ],
    );
  }
 //nullfield========================================================================
 //=================================================================================



  SizedBox nullBox() {
    return SizedBox(
      //   color: blue,
      width: double.infinity,
      height: 200.h,
      child: const Center(
        child: Text(
          'Plese enter number of\naccompanied persons',
          style: TextStyle(fontWeight: FontWeight.bold, color: white),
        ), 
      ),
    );
  }
   //divider=====================================================================
   //===========================================================================

  Padding divider() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Divider(thickness: 1, color: white),
    );
  }
  //numberof persons=========================================================
  //=========================================================================

  Padding nofPersons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        onChanged: (value) {
          setState(() {
            count = int.parse(numberController.text);
          });
        },
        keyboardType: TextInputType.number,
        controller: numberController,
        validator: (value) {},
        decoration: InputDecoration(
            counterStyle: const TextStyle(color: bg),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.r),
                borderSide: const BorderSide(color: bg)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.r),
              borderSide: const BorderSide(color: bg),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.r),
              borderSide: const BorderSide(color: red),
            ),
            fillColor: bg,
            focusColor: bg,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.r),
            )),
      ),
    );
  }
}

//modelClass==========================================
//====================================================

class InspectorModel {
  String? inspectorName;
  String? position;
  InspectorModel({
    required this.inspectorName,
    this.position,
  });
}

//colors=====================================================================
//===========================================================================

const mainred = Color.fromARGB(250, 221, 45, 68);
const white = Colors.white;
const lightblack = Color.fromARGB(255, 100, 98, 98);
const red = Colors.red;
const lightred = Color.fromARGB(248, 241, 174, 183);
const grey = Colors.grey;
const grey3 = Color.fromARGB(255, 144, 140, 140);
const lightgrey = Color.fromARGB(255, 248, 240, 240);
const lightgrey2 = Color.fromARGB(255, 254, 252, 252);
const bg = Color.fromARGB(255, 246, 243, 243);
const black = Colors.black;
const blue = Colors.blue;
const yellow = Colors.amber;
const grey2 = Color.fromARGB(255, 214, 212, 212);
