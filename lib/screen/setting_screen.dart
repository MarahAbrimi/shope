import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:marah1/screen/Country_screen.dart';
import 'package:marah1/screen/changepassword_screen.dart';
import 'package:marah1/screen/language_screen.dart';
import 'package:marah1/screen/legal_screen.dart';
import 'package:marah1/screen/notification_screen.dart';


import '../util/responsive.dart';

class Setting extends StatefulWidget {
  Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Setting",style: TextStyle(fontSize: 20,color: Colors.black),),
     actions: [IconButton(onPressed: (){
        Navigator.pop(context);
      },icon: Icon(Icons.arrow_back,color: Colors.black,),),],
        elevation: 0,backgroundColor: Colors.white),
   body: ResponsiveLayout(
       Mobile: MobileContant(),
       tab: TabContant(),
       )
      
      
     
    );
  }
}


class MobileContant extends StatelessWidget {
  const MobileContant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            height: double.infinity,
           child:Row(children: [
          Container(width: 255, color: Colors.white,
          child: Column(
          //  mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Container(
           padding: EdgeInsets.all(10),
            height: 50,
            child:Text("General",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
            ),
             ListTile(
       leading:  Image(image: AssetImage("assets/language.png"),width: 30,height: 30,),
       title: Text("Language A/&%"),

       onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Language()),
                    );},
     ),
     ListTile(
       leading:  Image(image: AssetImage("assets/country.png"),width: 30,height: 30,),
       title: Text("Change Country"),
       onTap: (){
     Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Country()),
                    );
       },
     ),

     ListTile(
       leading:  Image(image: AssetImage("assets/notifications.png"),width: 30,height: 30,),
       title: Text("Notification"),
       onTap: (){
Navigator.push(
       context,
         MaterialPageRoute(builder: (context) =>Notificationn()),
                    );
       },
     ),

     ListTile(
       leading:  Image(image: AssetImage("assets/legal.png"),width: 30,height: 30,),
       title: Text("Legal & About"),
       onTap: (){
        Navigator.push(
       context,
         MaterialPageRoute(builder: (context) => Legal()),
                    );
       },
     ),

       ListTile(
       leading:  Image(image: AssetImage("assets/about.png"),width: 30,height: 30,),
       title: Text("About As"),
       onTap: (){

       },
     ),

      Container(
           padding: EdgeInsets.all(10),
            height: 50,
            child:Text("Account",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
            ),

 ListTile(
       leading:  Image(image: AssetImage("assets/change.png"),width: 30,height: 30,),
       title: Text("Change Password"),
       onTap: (){
 Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChangePassword()),
                    );
       },
     ),

 ListTile(
       leading:  Image(image: AssetImage("assets/sign.png"),width: 30,height: 30,),
       title: Text("Sign out"),
       onTap: (){

       },
     ),


          ],),
          ),








          Container(width: 105, 
          decoration: BoxDecoration(
            color: Color.fromARGB(70, 243, 194, 227),
            borderRadius: BorderRadius.only( 
             topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(150) )),
          ),
           ],),
           
           );

  }
}



class TabContant extends StatelessWidget {
  const TabContant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            height: double.infinity,
           child:Row(children: [
          Container(width: 255, color: Colors.white,
          child: Column(
          //  mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Container(
           padding: EdgeInsets.all(10),
            height: 50,
            child:Text("General",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
            ),
             ListTile(
       leading:  Image(image: AssetImage("assets/language.png"),width: 30,height: 30,),
       title: Text("Language A/&%"),

       onTap: (){},
     ),
     ListTile(
       leading:  Image(image: AssetImage("assets/country.png"),width: 30,height: 30,),
       title: Text("Change Country"),
       onTap: (){

       },
     ),

     ListTile(
       leading:  Image(image: AssetImage("assets/notifications.png"),width: 30,height: 30,),
       title: Text("Notification"),
       onTap: (){

       },
     ),

     ListTile(
       leading:  Image(image: AssetImage("assets/legal.png"),width: 30,height: 30,),
       title: Text("Legal & About"),
       onTap: (){

       },
     ),

       ListTile(
       leading:  Image(image: AssetImage("assets/about.png"),width: 30,height: 30,),
       title: Text("About As"),
       onTap: (){

       },
     ),

      Container(
           padding: EdgeInsets.all(10),
            height: 50,
            child:Text("Account",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
            ),

 ListTile(
       leading:  Image(image: AssetImage("assets/change.png"),width: 30,height: 30,),
       title: Text("Change Password"),
       onTap: (){

       },
     ),

 ListTile(
       leading:  Image(image: AssetImage("assets/sign.png"),width: 30,height: 30,),
       title: Text("Sign out"),
       onTap: (){

       },
     ),


          ],),
          ),








          Container(width: 105, 
          decoration: BoxDecoration(
            color: Color.fromARGB(70, 243, 194, 227),
            borderRadius: BorderRadius.only( 
             topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(150) )),
          ),
           ],),
           
           );

  }
}



  