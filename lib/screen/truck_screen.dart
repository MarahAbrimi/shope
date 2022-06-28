import 'package:flutter/material.dart';
import 'package:marah1/util/responsive.dart';

class Truck extends StatefulWidget {
  Truck({Key? key}) : super(key: key);

  @override
  State<Truck> createState() => _TruckState();
}

class _TruckState extends State<Truck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
        centerTitle: true,
        title: Text("Shipped",style: TextStyle(color: Colors.black,fontSize: 20),),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [Icon(Icons.close,color: Color.fromARGB(144, 0, 0, 0),)],
        ),
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
      child: Column(children: [
        Container(
          margin: EdgeInsets.all(30),
          height: 60,
          width: 500,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
           color: Color.fromARGB(41, 163, 155, 155),
          ),
           child: Row(
            children: [
              Text("Boat Rockerz 350 on-Ear",style: TextStyle(fontSize: 15),),
              SizedBox(width: 50,),
              Icon(Icons.arrow_drop_down,size:40,),
            ],
           ),
           ),
     Stack(children: [
      Container(
        height: 500,
        child: Image(image: AssetImage("assets/Group4.png")),),
       Container(
        margin: EdgeInsets.only(top: 260,left: 190),
        child: Image(image: AssetImage("assets/truck.png"),))
     ],)
      ],),
    );
  }
}



class TabContant extends StatelessWidget {
  const TabContant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
