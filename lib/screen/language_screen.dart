import 'package:flutter/material.dart';
import 'package:marah1/util/responsive.dart';

class Language extends StatefulWidget {
  Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
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
        child: Text("Language A/&%",style: TextStyle(fontSize:19,fontWeight: FontWeight.bold,),)),

        ListTile(
       title: Text("العربية"),
       onTap: (){},
     ),
     ListTile(
       title: Text("ُEnglish"),
       onTap: (){},
     ),
     ListTile(
       title: Text("Hindi"),
       onTap: (){},
     ),
     ListTile(
       title: Text("Greec"),
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