import 'package:flutter/material.dart';
import 'package:marah1/util/responsive.dart';

class Legal extends StatefulWidget {
  Legal({Key? key}) : super(key: key);

  @override
  State<Legal> createState() => _LegalState();
}

class _LegalState extends State<Legal> {
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
    return SingleChildScrollView(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Container(
        margin: EdgeInsets.only(top: 10),
        child: Text("FAQ",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,),)),

        ListTile(
       title: Text("Term Of Use"),
       trailing:  Icon(Icons.arrow_right,color: Colors.black,),
       onTap: (){},
     ),
     
   ListTile(
       title: Text("Privacy Policy "),
       trailing:  Icon(Icons.arrow_right,color: Colors.black,),
       onTap: (){},
     ),
     
     ListTile(
       title: Text("License "),
       trailing:  Icon(Icons.arrow_right,color: Colors.black,),
       onTap: (){},
     ),
     
     ListTile(
       title: Text("Seller Policy "),
       trailing:  Icon(Icons.arrow_right,color: Colors.black,),
       onTap: (){},
     ),
     
     ListTile(
       title: Text("Return Policy"),
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