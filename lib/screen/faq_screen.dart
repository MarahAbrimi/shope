import 'package:flutter/material.dart';
import 'package:marah1/util/responsive.dart';

class FAQ extends StatefulWidget {
  FAQ({Key? key}) : super(key: key);

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
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
  const MobileContant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      
      children: [
      Container(
        margin: EdgeInsets.only(top: 10),
        child: Text("Language A/&%",style: TextStyle(fontSize:19,fontWeight: FontWeight.bold,),)),

        ListTile(
       title: Text(" HOW CAN I CHANGE MY CHIPPING ADDRESS?"),
       trailing:  Icon(Icons.arrow_right,color: Colors.black,),
       onTap: (){},
     ),
     
   ListTile(
       title: Text("HOW MANY FREE SAMLES CAN I REDEEM?"),
       trailing:  Icon(Icons.arrow_right,color: Colors.black,),
       onTap: (){},
     ),
     
     ListTile(
       title: Text("HOW CAN I TRACK MY ORDERS & PAYMENT?"),
       trailing:  Icon(Icons.arrow_right,color: Colors.black,),
       onTap: (){},
     ),
     
     ListTile(
       title: Text("HOW LONG WILL IT TAKE FOR MY ORDER TO ARRIVE AFTER I MAKE PAYMENT?"),
       trailing:  Icon(Icons.arrow_right,color: Colors.black,),
       onTap: (){},
     ),
     
     ListTile(
       title: Text("HOW DO YOU SHIP MY ORDERS?"),
       trailing:  Icon(Icons.arrow_right,color: Colors.black,),
       onTap: (){},
     ),
     ListTile(
       title: Text("HOW DO I MAKE PAYMENT USING PAPAL?                                         HOW DOES IT WORK?"),
       trailing:  Icon(Icons.arrow_right,color: Colors.black,),
       onTap: (){},
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