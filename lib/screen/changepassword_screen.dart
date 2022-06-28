import 'package:flutter/material.dart';
import 'package:marah1/util/responsive.dart';
import 'package:marah1/widget/Custom_botton.dart';
import 'package:marah1/widget/Custom_textfield.dart';

class ChangePassword extends StatefulWidget {
  ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
  bool notify = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Container(
        margin: EdgeInsets.only(top: 10),
        child: Text("Change Password",style: TextStyle(fontSize:19,fontWeight: FontWeight.bold,),)),

       Container(
        padding: EdgeInsets.only(top: 35,left: 16),
        child: Text("Enter  your current password",style: TextStyle(fontSize: 16),),),
     
     CustomTextField(
      hintText: "Existing Password",
     ),
    
    Container(
        padding: EdgeInsets.only(top: 30,left: 16),
        child: Text("Enter New Password",style: TextStyle(fontSize: 16),),),
     
     CustomTextField(
      hintText: "New Password",
     ),

     Container(
        padding: EdgeInsets.only(top: 30,left: 16),
        child: Text("ReType New password",style: TextStyle(fontSize: 16),),),
     
     CustomTextField(
      hintText: "ReType Password",
     ),

     SizedBox(height: 180,),
     Row(
       children: [
        SizedBox(width: 70,),
        Container(

       height: 65,
            width: 230,
            margin: EdgeInsets.only(top:10),
             decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:Color.fromARGB(255, 233, 89, 6) ,
        ),
            child: FlatButton(
              textColor: Colors.white,
            child: 
            Text("Confirm Change",style:TextStyle(fontSize: 22,color: Colors.white)),
            onPressed:(){}
            
            
             ),
    ),
        //  button(
        //   height: 60,
        //   text: "Confirm Change",
        //   color: Color.fromARGB(255, 233, 89, 6) ,
          
        //  ),
       ],
     ),

    
     
    ],),);
  }
}



class TabContant extends StatelessWidget {
  const TabContant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}