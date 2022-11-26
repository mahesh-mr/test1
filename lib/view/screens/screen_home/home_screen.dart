import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:fps/view/screens/screen_home/widgets/botomfom.dart';
import 'package:fps/view/screens/screen_register/widgets/custombutton.dart';
import 'package:fps/view/screens/sreen_survay/survay_screen.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool _switchValue = false;

class _HomeScreenState extends State<HomeScreen> {
  final positon = TextEditingController();
  final persons = TextEditingController();
  final name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final h15 = SizedBox(
      height: 15,
    );
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: bg,
        title: Text(
          "CIVIL SUPPLIES",
          style: appText,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: mainred,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Start",
                        style: welcomeText,
                      ),
                      Text(
                        "Survey",
                        style: welcomeText,
                      ),
                    ],
                  ),
                  Container(
                    height: 90,
                    width: 110,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/6.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "Survey For Inspections Of",
              style: TextStyle(fontWeight: FontWeight.bold, color: grey),
            ),
            const Text(
              'Ration Shops Across Kerala',
              style: TextStyle(fontWeight: FontWeight.bold, color: grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  buttons(),
                  const SizedBox(
                    height: 10,
                  ),
                  district(),
                  const SizedBox(
                    height: 10,
                  ),
                  taluk(),
                  const SizedBox(
                    height: 10,
                  ),
                  furka(),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Switch(
                        activeColor: mainred,
                        value: _switchValue,
                        onChanged: (value) {
                          setState(() {
                            _switchValue = value;
                          });
                          if (_switchValue == true) {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: mainred,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(60),
                                  topRight: Radius.circular(60),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return Container(
                                  width: double.infinity,
                                  height: 600,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 50),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Accompanied',
                                                style: bottomtext,
                                              ),
                                              Text(
                                                'Survey',
                                                style: bottomtext,
                                              ),
                                            ],
                                          ),
                                        ),
                                        h15,
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'Number of Accompanied Persons',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: white),
                                            ),
                                            h15,
                                            BotosheetForm(
                                              controller: persons,
                                              textinputType: TextInputType.name,
                                              validator: (value) {},
                                            ),
                                            h15,
                                            const Text(
                                              'Inspector Name',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: white),
                                            ),
                                            h15,
                                            BotosheetForm(
                                              controller: persons,
                                              textinputType: TextInputType.name,
                                              validator: (value) {},
                                            ),
                                            h15,
                                            const Text(
                                              'position',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: white),
                                            ),
                                            h15,
                                            BotosheetForm(
                                              controller: persons,
                                              textinputType: TextInputType.name,
                                              validator: (value) {},
                                            ),
                                            SizedBox(
                                              height: 50,
                                            ),
                                            CustomButton(
                                              onPressed: () {},
                                              title: "SUBMIT",
                                              btncolor: white,
                                              textColor: mainred,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          }
                        },
                      ),
                      const Text(
                        'Is It An Accompanied Inspected ?',
                        style: TextStyle(color: grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    onPressed: () {
                      Get.to(SurveyScreen(),);
                    },
                    title: "Start Survey",
                    btncolor: mainred,
                    textColor: white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ClayContainer furka() {
    return ClayContainer(
      color: white,
      borderRadius: 50,
      depth: 40,
      parentColor: white,
      spread: 2,
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(5),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: const BorderSide(color: lightgrey)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: lightgrey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: red),
          ),
          suffixIcon: const Icon(
            Icons.arrow_drop_down,
            color: grey,
          ),
          hintText: "DISTRICT",
          fillColor: white,
          focusColor: white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }

  ClayContainer taluk() {
    return ClayContainer(
      color: white,
      borderRadius: 50,
      depth: 40,
      parentColor: white,
      spread: 2,
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(5),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: const BorderSide(color: lightgrey)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: lightgrey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: red),
          ),
          suffixIcon: const Icon(
            Icons.arrow_drop_down,
            color: grey,
          ),
          hintText: "TALUK",
          fillColor: white,
          focusColor: white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }

  ClayContainer district() {
    return ClayContainer(
      color: white,
      borderRadius: 50,
      depth: 40,
      parentColor: white,
      spread: 2,
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(5),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: const BorderSide(color: lightgrey)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: lightgrey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: red),
          ),
          suffixIcon: const Icon(
            Icons.arrow_drop_down,
            color: grey,
          ),
          hintText: "DISTRICT",
          fillColor: white,
          focusColor: white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }

  Row buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(90.0, 23.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: mainred,
          ),
          child: const Text('Date'),
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(160.0, 23.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: mainred,
          ),
          child: const Text('Inspection Date'),
        ),
      ],
    );
  }
}
