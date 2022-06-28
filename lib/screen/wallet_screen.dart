import 'package:flutter/material.dart';
import 'package:marah1/util/responsive.dart';

class Wallet1 extends StatefulWidget {
  Wallet1({Key? key}) : super(key: key);

  @override
  State<Wallet1> createState() => _Wallet1State();
}

class _Wallet1State extends State<Wallet1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.white,
      appBar: AppBar(elevation: 0,backgroundColor: Colors.white,
      title: Text("My Wallet",style: TextStyle(fontSize: 16,color: Colors.black),),
      centerTitle: true,
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      },icon: Icon(Icons.arrow_back,color: Colors.black,),),
     actions: [IconButton(onPressed: (){}, icon: ImageIcon(AssetImage("assets/timer.png"),color: Colors.black,))],
      ),
      body: ResponsiveLayout(
       Mobile: MobileContant(),
       tab: TabContant(),
       ));
  }
}

class MobileContant extends StatelessWidget {
  const MobileContant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(
      children: [
      Padding(
        padding: const EdgeInsets.only(top: 20,left: 80,right: 80),
        child: Text("Current acount balance",style: TextStyle(fontSize: 16),),
      ),
    
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(r"$",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Text("59.70",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),),
          ],
        ),
        Padding(
        padding: const EdgeInsets.only(top: 20,left: 80,right: 80),
        child: Text("Quick Money Request",style: TextStyle(fontSize: 16),),
      ),


  Container(
    margin: EdgeInsets.only(top: 40,left: 10),
    child:SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(children: [
Container(
 padding: EdgeInsets.only(left: 5,bottom: 5),
  height: 25,width: 25,
child: Text("+",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.amber),
),

Container(child: Container(
  margin: EdgeInsets.only(left: 10),
  height: 150,
  width: 150,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(40, 214, 211, 211),),
  child: Column(children: [
      Container(
            margin: EdgeInsets.only(top: 15,),
            height: 70,
            width: 70,
            child: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5GNLQ5Rq4_uCHZY7yxKiYXxjkkhro_aIbGQ&usqp=CAU"),)
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: Text("Marah Hamdan",style: TextStyle(fontSize: 13,color: Colors.black,),)),
              Container(
              margin: EdgeInsets.all(5),
              child: Text("Marah Hamdan",style: TextStyle(fontSize: 10,color: Colors.black,),)),
  ],),
   ),),
  Container(child: Container(
  margin: EdgeInsets.only(left: 10),
  height: 150,
  width: 150,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(40, 214, 211, 211),),
  child: Column(children: [
      Container(
            margin: EdgeInsets.only(top: 15,),
            height: 70,
            width: 70,
            child: CircleAvatar(backgroundImage: NetworkImage("https://www.thesun.co.uk/wp-content/uploads/2022/05/309E522E-D141-11EC-BE62-1280C3EF198F.jpeg"),)
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: Text("Aya Judeh",style: TextStyle(fontSize: 13,color: Colors.black,),)),
              Container(
              margin: EdgeInsets.all(5),
              child: Text("Aya Judeh",style: TextStyle(fontSize: 10,color: Colors.black,),)),
  ],),
   ),), 
Container(child: Container(
  margin: EdgeInsets.only(left: 10),
  height: 150,
  width: 150,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(40, 214, 211, 211),),
  child: Column(children: [
      Container(
            margin: EdgeInsets.only(top: 15,),
            height: 70,
            width: 70,
            child: CircleAvatar(backgroundImage: NetworkImage("https://img.buzzfeed.com/buzzfeed-static/static/2022-05/11/14/asset/82ea240a9e12/sub-buzz-2936-1652279997-1.jpg?downsize=900:*&output-format=auto&output-quality=auto"),)
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: Text("Belal Arabi",style: TextStyle(fontSize: 13,color: Colors.black,),)),
              Container(
              margin: EdgeInsets.all(5),
              child: Text("Belal Arabi",style: TextStyle(fontSize: 10,color: Colors.black,),)),
  ],),
   ),),
Container(child: Container(
  margin: EdgeInsets.only(left: 10),
  height: 150,
  width: 150,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(40, 214, 211, 211),),
  child: Column(children: [
      Container(
            margin: EdgeInsets.only(top: 15,),
            height: 70,
            width: 70,
            child: CircleAvatar(backgroundImage: NetworkImage("https://i.ytimg.com/vi/K2pFQ3HKAvA/maxresdefault.jpg"),)
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: Text("Belal Azezeh",style: TextStyle(fontSize: 13,color: Colors.black,),)),
              Container(
              margin: EdgeInsets.all(5),
              child: Text("Belal Azezeh",style: TextStyle(fontSize: 10,color: Colors.black,),)),
  ],),
   ),),
Container(child: Container(
  margin: EdgeInsets.only(left: 10),
  height: 150,
  width: 150,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(40, 214, 211, 211),),
  child: Column(children: [
      Container(
            margin: EdgeInsets.only(top: 15,),
            height: 70,
            width: 70,
            child: CircleAvatar(backgroundImage: NetworkImage("https://media.marketrealist.com/brand-img/Ik1D_rqGf/0x0/newprofile-pic-1-1652281674003.jpg"),)
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: Text("Aseel Sbehat",style: TextStyle(fontSize: 13,color: Colors.black,),)),
              Container(
              margin: EdgeInsets.all(5),
              child: Text("Aseel Sbehat",style: TextStyle(fontSize: 10,color: Colors.black,),)),
  ],),
   ),),
],),)),
 Padding(
        padding: const EdgeInsets.only(top: 20,left: 80,right: 80),
        child: Text("Hot Deals",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
      ),

      Container(height: 300,
      color: Color.fromARGB(87, 223, 113, 150),
      child:  Container(
    margin: EdgeInsets.only(left: 10),
    child:SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(children: [
Container(child: Container(
  margin: EdgeInsets.only(left: 10),
  height: 200,
  width: 150,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(232, 255, 255, 255),),
  child: Column(children: [
     
            Container(
              margin: EdgeInsets.only(left: 5,top: 35),
              child: Text("Descount",style: TextStyle(fontSize: 25,color: Color.fromARGB(169, 0, 0, 0),),)),
              Container(
              margin: EdgeInsets.all(5),
              child: Text("Vaucher",style: TextStyle(fontSize: 25,color:Color.fromARGB(169, 0, 0, 0),),)),
               Container(
              margin: EdgeInsets.all(10),
              child: Text("10% Off On any pizzahut product",style: TextStyle(fontSize: 10,color:Color.fromARGB(143, 0, 0, 0),),)),
  ],),
   ),),
Container(child: Container(
  margin: EdgeInsets.only(left: 10),
  height: 200,
  width: 150,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(232, 255, 255, 255),),
  child: Column(children: [
     
            Container(
              margin: EdgeInsets.only(left: 5,top: 35),
              child: Text("Descount",style: TextStyle(fontSize: 25,color: Color.fromARGB(169, 0, 0, 0),),)),
              Container(
              margin: EdgeInsets.all(5),
              child: Text("Vaucher",style: TextStyle(fontSize: 25,color:Color.fromARGB(169, 0, 0, 0),),)),
               Container(
              margin: EdgeInsets.all(10),
              child: Text("10% Off On any pizzahut product",style: TextStyle(fontSize: 10,color:Color.fromARGB(143, 0, 0, 0),),)),
  ],),
   ),),
Container(child: Container(
  margin: EdgeInsets.only(left: 10),
  height: 200,
  width: 150,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(232, 255, 255, 255),),
  child: Column(children: [
     
            Container(
              margin: EdgeInsets.only(left: 5,top: 35),
              child: Text("Descount",style: TextStyle(fontSize: 25,color: Color.fromARGB(169, 0, 0, 0),),)),
              Container(
              margin: EdgeInsets.all(5),
              child: Text("Vaucher",style: TextStyle(fontSize: 25,color:Color.fromARGB(169, 0, 0, 0),),)),
               Container(
              margin: EdgeInsets.all(10),
              child: Text("15% Off On any pizzahut product",style: TextStyle(fontSize: 10,color:Color.fromARGB(143, 0, 0, 0),),)),
  ],),
   ),),
Container(child: Container(
  margin: EdgeInsets.only(left: 10),
  height: 200,
  width: 150,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(232, 255, 255, 255),),
  child: Column(children: [
     
            Container(
              margin: EdgeInsets.only(left: 5,top: 35),
              child: Text("Descount",style: TextStyle(fontSize: 25,color: Color.fromARGB(169, 0, 0, 0),),)),
              Container(
              margin: EdgeInsets.all(5),
              child: Text("Vaucher",style: TextStyle(fontSize: 25,color:Color.fromARGB(169, 0, 0, 0),),)),
               Container(
              margin: EdgeInsets.all(10),
              child: Text("10% Off On any pizzahut product",style: TextStyle(fontSize: 10,color:Color.fromARGB(143, 0, 0, 0),),)),
  ],),
   ),),
],),)),
        
      )  ]
    ),);
  }
}



class TabContant extends StatelessWidget {
  const TabContant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
