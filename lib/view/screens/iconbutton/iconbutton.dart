import 'package:flutter/material.dart';
import 'package:fps/view/style/style.dart';
import 'package:fradio_nullsafety/fradio_nullsafety.dart';

class FRadioPage extends StatefulWidget {
  @override
  _FRadioPageState createState() => _FRadioPageState();
}

class _FRadioPageState extends State<FRadioPage> {
  int groupValue_4 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffffc900),
        title: const Text('FRadio'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            gradientDemo(),
          ],
        ),
      ),
    );
  }

  Widget gradientDemo() {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: index == 4 ? 0 : 10),
              child: FRadio(
                width: 50,
                height: 50,
                value: index + 1,
                groupValue: groupValue_4,
                onChanged: (value) {
                  setState(() {
                    groupValue_4 = value!;
                  });
                },
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffFEFDBB),
                    Color(0xffFFE16C),
                    Color(0xffEA9D1C),
                    Color(0xffD46307),
                  ],
                  begin: Alignment(-0.1, -0.9),
                  end: Alignment(1.0, 1.0),
                  stops: [0.0, 0.2, 0.7, 1.0],
                ),
                selectedColor: const Color(0xffffc900),
                hasSpace: false,
                border: 1.5,
                child: Text(
                  "Yes",
                  style:
                      const TextStyle(color: Color(0xffd9d9d9), fontSize: 13),
                ),
                hoverChild: Text(
                  "No",
                  style: const TextStyle(
                      color: Colors.deepOrangeAccent, fontSize: 13),
                ),
                selectedChild: Text("No",
                    style: const TextStyle(
                        color: Colors.deepOrangeAccent, fontSize: 13)),
              ),
            );
          }),
    );
  }
}
