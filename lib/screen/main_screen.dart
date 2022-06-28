import 'package:flutter/material.dart';
import 'package:marah1/screen/category_screen.dart';
import 'package:marah1/screen/checkout_screen.dart';
import 'package:marah1/screen/home_screen.dart';
import 'package:marah1/screen/login_screen.dart';
import 'package:marah1/screen/profile_screen.dart';
import 'package:marah1/screen/ubpay_screen.dart';

class mainscreen extends StatefulWidget {
  mainscreen({Key? key}) : super(key: key);

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  int selectIndex=0;
   Widget _widget = Homescreen();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
     
        child: Scaffold(

          body: _widget ,
             bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectIndex,
              //backgroundColor: Colors.amber,
            unselectedItemColor: Color.fromARGB(255, 8, 8, 2),
            selectedItemColor: Color.fromARGB(255, 252, 206, 67),
            onTap: onTabTapped,
            items: [
              BottomNavigationBarItem(label: "home",icon:Image( image:AssetImage("assets/home.png"),)),
              BottomNavigationBarItem(label: "category", icon: Image( image:AssetImage("assets/category.png"),),),
            BottomNavigationBarItem(label: "cart",icon:Image( image:AssetImage("assets/package.png"),)),
              BottomNavigationBarItem(label: "profile",icon:Image(image: AssetImage("assets/profile.png"),)),
               
            ]
            
            ),

        ),
    
    );
  }
  void onTabTapped(int index) {
    setState(() {
      selectIndex = index;
      if (index == 0) {
        _widget = Homescreen();
      } else if (index == 1) {
        _widget = category();
      }else if (index == 2) {
        _widget = UnpayedScreen();
      } else {
        _widget = profile();
      }
    });
  }
}