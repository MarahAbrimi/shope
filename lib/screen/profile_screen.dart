import 'package:flutter/material.dart';
import 'package:marah1/screen/checkout_screen.dart';
import 'package:marah1/screen/faq_screen.dart';
import 'package:marah1/screen/payment_screen.dart';
import 'package:marah1/screen/setting_screen.dart';
import 'package:marah1/screen/truck_screen.dart';
import 'package:marah1/screen/wallet_screen.dart';
import 'package:marah1/util/responsive.dart';
import 'package:marah1/widget/Custom_backgraund.dart';

class profile extends StatefulWidget {
  profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  centerTitle: true,
  backgroundColor: Colors.white,
  elevation: 0,
  leading: IconButton(icon:(Icon(Icons.arrow_back,color: Colors.black,)),onPressed: (){Navigator.pop(context);},)
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
      child:  Column(
         //mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            margin: EdgeInsets.only(top: 10,left: 10),
            height: 150,
            width: 150,
            child: CircleAvatar(backgroundImage: AssetImage("assets/pp.webp"),)
            ),
            Container(
              margin: EdgeInsets.only(left: 10,top: 8),
              child: Text("Marah Hamdan",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight:FontWeight.bold),)),
              Container(color: Colors.amberAccent,),
       
       Container(
        height: 150,
        width: 330,
        margin: EdgeInsets.only(left: 30,right: 30,top: 10),
         child: Card(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          color: Colors.white,
          shadowColor: Colors.amber,
          elevation: 8,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               InkWell(
                child: Image( image:AssetImage("assets/wallet.png"),width: 30,height: 30,),
                onTap: (){
                Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Wallet1()),
                      );  },
             ),
                InkWell(
                  child: Image(image: AssetImage("assets/truck.png"),width: 30,height: 32,),
                  onTap: (){
                   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Truck()),
                      );
                },),
                 InkWell(
                  child: Image(image: AssetImage("assets/card.png"),width: 30,height: 30,),
                  onTap: (){
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Payment()),
                      );
                 },),
                  InkWell(child: Image(image:  AssetImage("assets/contact.png"),width: 30,height: 30,) ,onTap: (){},)
          ],) ),
       ),
       
       
       Container(
        margin: EdgeInsets.all(10),
        height: 70,
        width: double.infinity,
        color: Color.fromARGB(234, 255, 255, 255),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.settings),
            Column(children: [
              Text("Setting",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              Text("privacy and logout",style: TextStyle(fontSize: 10,color: Color.fromARGB(160, 0, 0, 0))),
            ],),
            IconButton(onPressed: (){
              Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Setting()),
                      );
            }, icon: Icon(Icons.arrow_forward,color: Color.fromARGB(162, 226, 61, 11),))
           
          ],
        ),
       ),

 Container(
        margin: EdgeInsets.all(10),
        height: 70,
        width: double.infinity,
        color: Color.fromARGB(234, 255, 255, 255),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageIcon(AssetImage("assets/support.png"),color: Colors.black,),
            Column(children: [
              Text("Help & Support",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              Text("Help Center & legal terms",style: TextStyle(fontSize: 10,color: Color.fromARGB(160, 0, 0, 0))),
            ],),
            Icon(Icons.arrow_forward,color: Color.fromARGB(162, 226, 61, 11),),
          ],
        ),
       ),

Container(
        margin: EdgeInsets.all(10),
        height: 70,
        width: double.infinity,
        color: Color.fromARGB(234, 255, 255, 255),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageIcon(AssetImage("assets/faq.png"),color: Colors.black,),
            Column(children: [
              Text("FAQ",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              Text("Quistion & Answer",style: TextStyle(fontSize: 10,color: Color.fromARGB(160, 0, 0, 0))),
            ],),
             IconButton(onPressed: (){
              Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FAQ()),
                      );
            }, icon: Icon(Icons.arrow_forward,color: Color.fromARGB(162, 226, 61, 11),))
           
          ],
        ),
       ),

      
       
       
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