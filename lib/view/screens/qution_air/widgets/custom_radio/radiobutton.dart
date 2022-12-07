import 'package:flutter/material.dart';
import 'package:fps/model/radio_model.dart';
import 'package:fps/view/style/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRadio extends StatelessWidget {
  Gender _gender;

  CustomRadio(this._gender);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            boxShadow: [
             
   
    BoxShadow(
         offset: Offset(-5, 7),
        spreadRadius: -7,
        blurRadius: 5,
        color: Color.fromRGBO(149, 147, 147, 1),
    )
    // ,  BoxShadow(
    //     offset: Offset(-1, -7),
    //     spreadRadius: -6,
    //     blurRadius: 1,
    //     color: Color.fromRGBO(255, 255, 255, 1),
    // )
            ]
          ),
          child: Card(
              //    borderOnForeground:true ,
              color: _gender.isSelected ? mainred : white,
              child: Container(
                height: 45.h,
                width: 55.w,
                alignment: Alignment.center,
                margin: EdgeInsets.all(2.0.w),
                child: Text(
                  _gender.name,
                  style: TextStyle(
                      color: _gender.isSelected ? Colors.white : Colors.grey),
                ),
              )),
        ),
        //  SizedBox(width: 30,)
      ],
    );
  }
}

class GenderSelector extends StatefulWidget {
  @override
  _GenderSelectorState createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  List<Gender> genders = [];

  @override
  void initState() {
    super.initState();
    genders.add(new Gender("Yes", false));
    genders.add(new Gender("No", false));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //  color: blue,
          height: 57.h,

          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: genders.length,
              itemBuilder: (context, index) {
                return InkWell(
                  splashColor: yellow,
                  onTap: () {
                    setState(() {
                      genders.forEach((gender) => gender.isSelected = false);
                      genders[index].isSelected = true;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: CustomRadio(genders[index]),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
