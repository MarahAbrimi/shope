import 'package:flutter/material.dart';
import 'package:marah1/util/responsive.dart';

class Country extends StatefulWidget {
  Country({Key? key}) : super(key: key);

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
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
        child: Text("Change Country",style: TextStyle(fontSize:19,fontWeight: FontWeight.bold,),)),

        ListTile(
       title: Text("Jordan"),
       onTap: (){},
     ),
     ListTile(
       title: Text("Iraq"),
       onTap: (){},
     ),
     ListTile(
       title: Text("Suidi Arabia"),
       onTap: (){},
     ),
     ListTile(
       title: Text("pelestine"),
       onTap: (){},
     ),
     ListTile(
       title: Text("French"),
       onTap: (){},
     ),
     ListTile(
       title: Text("Egypt"),
       onTap: (){},
     ),
     ListTile(
       title: Text("Amerca"),
       onTap: (){},
     ),
     ListTile(
       title: Text("Lebanon"),
       onTap: (){},
     ),
     ListTile(
       title: Text("India"),
       onTap: (){},
     ),
      ListTile(
       title: Text("Spane"),
       onTap: (){},
     ),
     ListTile(
       title: Text("japan"),
       onTap: (){},
     ),
      ListTile(
       title: Text("Germany"),
       onTap: (){},
     ),
     ListTile(
       title: Text("Russia"),
       onTap: (){},
     ),
      ListTile(
       title: Text("Pakistan"),
       onTap: (){},
     ),
     ListTile(
       title: Text("Malisya"),
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