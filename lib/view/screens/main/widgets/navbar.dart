import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fps/view/screens/main/widgets/profile.dart';
import 'package:fps/view/screens/main/widgets/support.dart';
import 'package:fps/view/screens/screen_home/home_screen.dart';
import 'package:fps/view/style/style.dart';




class NavBarScreen extends StatefulWidget {
  NavBarScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

// Audio find(List<Audio> source, String fromPath) {
//   return source.firstWhere((element) => element.path == fromPath);
// }

class _NavBarScreenState extends State<NavBarScreen> {
  int _currentSelectedIndex = 0;

  // final _pages = [
  //   const SongsList(),
  //   // Playings(index: 0,),
  //   // const Album(),
  //   const Playlis(),
  //   const Favourite(),
  // ];F

  final List<Widget> _pages = <Widget>[
    HomeScreen(),
   support(),
   Profile(),
    // SlpashHome(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       backgroundColor:bg,
        body: _pages[_currentSelectedIndex],
        bottomNavigationBar: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
          child: SizedBox(
            height: 70,
            child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(30)),
              child: BottomNavigationBar(
                
              backgroundColor: grey2,
                iconSize: 20,
               
                  elevation: 0,
                  type: BottomNavigationBarType.fixed,
                 
             //     showSelectedLabels: true,
                  selectedItemColor: Colors.amber,
                  unselectedItemColor: Colors.grey,
                  currentIndex: _currentSelectedIndex,
                  // ignore: non_constant_identifier_names
                  onTap: (NewIndex) {
                    setState(() {
                      _currentSelectedIndex = NewIndex;
                    });
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home_outlined),
                        activeIcon: Stack(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                           //   color: Colors.red,
                               child: Align(
                                alignment: Alignment.centerRight,
                                 child: CircleAvatar(
                                                           radius: 8,
                                                           backgroundColor: Colors.yellow,
                                                         ),
                               ),
                            ),
                            Positioned(
                         bottom: 0,
                             // right: 5,
              
                                child:Icon(Icons.home_outlined,color: Colors.black,size: 30,))
                          ],
                        ),
                        //Icon(CupertinoIcons.house_fill),
                        label: ''),
                  BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.person),
                        activeIcon: Stack(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                           //   color: Colors.red,
                               child: Align(
                                alignment: Alignment.bottomRight,
                                 child: CircleAvatar(
                                                           radius: 8,
                                                           backgroundColor: Colors.yellow,
                                                         ),
                               ),
                            ),
                            Positioned(
                         bottom: 0,
                             // right: 5,
              
                                child:Icon(CupertinoIcons.person,color: Colors.black,size: 30,))
                          ],
                        ),
                        
                  
                        label: ''),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.headset_mic_outlined),  activeIcon: Stack(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                        
                              child:  Icon(Icons.headset_mic_outlined),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 5,
              
                                child: CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.blue,
                            ))
                          ],
                        ),
                      //  activeIcon: Icon(Icons.headphones),
                        label: ''
                        ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}



