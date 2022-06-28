import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marah1/screen/login_screen.dart';

class Splashscreen extends StatefulWidget {
  Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
  }

class _SplashscreenState extends State<Splashscreen> {  
  @override
  Widget build(BuildContext context) {
   
 Timer(Duration(seconds: 2), (() => Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => login(),))));
    return Stack(
      children: [
        Container(

           padding: EdgeInsets.only(left: 25),
             decoration: BoxDecoration(
             image: DecorationImage(
             image: AssetImage("assets/p2.jpg"),
             fit: BoxFit.cover,
             opacity: 0.6,
             )),
             child: Column(
            children: [
               Container(
                 // margin: EdgeInsets.only(top: 165,left: 77),
                margin: EdgeInsets.only(top: 200),
                child: Image.asset("assets/Logos.png",height: 250,width: 250,),),

                Container(
                   margin: EdgeInsets.only(top: 280),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('Power by ',style: TextStyle(fontSize: 12,color: Colors.black),),
                  Text('int2.io',style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
   ] ),
 ),
           
            ] 
        )
           

        ),
      ],
    );
  }
}