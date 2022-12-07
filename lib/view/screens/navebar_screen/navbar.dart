import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fps/view/screens/navebar_screen/widgets/profile.dart';
import 'package:fps/view/screens/navebar_screen/widgets/support.dart';
import 'package:fps/view/screens/screen_home/home_screen.dart';
import 'package:fps/view/style/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBarScreen extends StatefulWidget {
  NavBarScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _currentSelectedIndex = 0;
  final List _pages = [
    const HomeScreen(),
    const Profile(),
    const support(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bg,
        body: _pages[_currentSelectedIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, bottom: 30),
          child: SizedBox(
            height: 40.h,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(8, -12),
                      spreadRadius: -3,
                      blurRadius: 11,
                      color: Color.fromRGBO(252, 252, 252, 1),
                    ),
                    BoxShadow(
                      offset: Offset(-8, 9),
                      spreadRadius: -2,
                      blurRadius: 9,
                      color: Color.fromRGBO(208, 186, 186, 1),
                    )
                  ]),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child: BottomNavigationBar(
                    backgroundColor: bg,
                    iconSize: 20,
                    elevation: 0,
                    type: BottomNavigationBarType.fixed,
                    showSelectedLabels: true,
                    unselectedItemColor: lightblack,
                    currentIndex: _currentSelectedIndex,
                    selectedFontSize: 0,
                    unselectedFontSize: 0,
                    onTap: (newIndex) {
                      setState(() {
                        _currentSelectedIndex = newIndex;
                      });
                    },
                    items: [
                      BottomNavigationBarItem(
                          icon: const Icon(
                            Icons.home_outlined,
                            size: 25,
                          ),
                          activeIcon: Stack(
                            children: [
                              SizedBox(
                                width: 25.w,
                                height: 25.h,
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: CircleAvatar(
                                    radius: 6.r,
                                    backgroundColor: yellow.withOpacity(.8),
                                  ),
                                ),
                              ),
                              const Positioned(
                                  bottom: 0,
                                  child: Icon(
                                    Icons.home_outlined,
                                    color: lightblack,
                                    size: 25,
                                  ))
                            ],
                          ),
                          //Icon(CupertinoIcons.house_fill),
                          label: ''),
                      BottomNavigationBarItem(
                          icon: const Icon(
                            CupertinoIcons.person,
                            color: lightblack,
                            size: 25,
                          ),
                          activeIcon: Stack(
                            children: [
                              Container(
                                width: 25.w,
                                height: 25.h,
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: CircleAvatar(
                                    radius: 6.r,
                                    backgroundColor: yellow.withOpacity(.8),
                                  ),
                                ),
                              ),
                              const Positioned(
                                bottom: 0,
                                child: Icon(
                                  CupertinoIcons.person,
                                  color: lightblack,
                                  size: 25,
                                ),
                              )
                            ],
                          ),
                          label: ''),
                      BottomNavigationBarItem(
                          icon: const Icon(
                            Icons.headset_mic_outlined,
                            size: 25,
                          ),
                          activeIcon: Stack(
                            children: [
                              SizedBox(
                                width: 25.w,
                                height: 25.h,
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: CircleAvatar(
                                    radius: 6.r,
                                    backgroundColor: yellow.withOpacity(.8),
                                  ),
                                ),
                              ),
                              const Positioned(
                                bottom: 0,
                                child: const Icon(
                                  Icons.headset_mic_outlined,
                                  color: lightblack,
                                  size: 25,
                                ),
                              )
                            ],
                          ),
                          //  activeIcon: Icon(Icons.headphones),
                          label: ''),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
