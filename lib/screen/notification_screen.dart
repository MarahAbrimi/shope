import 'package:flutter/material.dart';
import 'package:marah1/util/responsive.dart';

class Notificationn extends StatefulWidget {
  Notificationn({Key? key}) : super(key: key);

  @override
  State<Notificationn> createState() => _NotificationnState();
}

class _NotificationnState extends State<Notificationn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
        title: Text("Setting",style: TextStyle(fontSize: 20,color: Colors.black),),
     actions: [IconButton(onPressed: (){
        Navigator.pop(context);
      },icon: Icon(Icons.arrow_back,color: Colors.black,),),],
        elevation: 0,backgroundColor: Colors.white),
       body: ResponsiveLayout(
       Mobile: MobileContant(),
       tab: TabContant(),
       ));
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
        child: Text("Notification",style: TextStyle(fontSize:19,fontWeight: FontWeight.bold,),)),

        ListTile(
       title: Text("My Ordar"),
       trailing: Switch(
        activeColor: Colors.amber,
        value: notify, onChanged: (bool notify){
        print(notify);
       })
     ),

     ListTile(
       title: Text("Reminders"),
       trailing: Switch(
        activeColor: Colors.amber,
        value: notify, onChanged: (bool notify){
        print(notify);
       })
     ),

     ListTile(
       title: Text("New Offers"),
       trailing: Switch(
        activeColor: Colors.amber,
        value: notify, onChanged: (bool notify){
        print(notify);
       })
     ),

     ListTile(
       title: Text("Feedback & Reviews"),
       trailing: Switch(
        activeColor: Colors.amber,
        value: notify, onChanged: (bool notify){
        print(notify);
       })
     ),
     ListTile(
       title: Text("Updates"),
       trailing: Switch(
        activeColor: Colors.amber,
        value: notify, onChanged: (bool notify){
        print(notify);
       })
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