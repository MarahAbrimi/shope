import 'package:flutter/material.dart';
import 'package:marah1/screen/addadress_screen.dart';
import 'package:marah1/util/responsive.dart';
import 'package:marah1/widget/Custom_Checkout.dart';
import 'package:marah1/widget/Custom_backgraund.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:carousel_slider/carousel_slider.dart';
class checkout extends StatefulWidget {
  checkout({Key? key}) : super(key: key);

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(elevation: 0,backgroundColor: Colors.white,
      title: Text("CheckOut",style: TextStyle(fontSize: 16,color: Colors.black),),
      centerTitle: true,
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      },icon: Icon(Icons.arrow_back,color: Colors.black,),),
     actions: [IconButton(onPressed: (){}, icon: ImageIcon(AssetImage("assets/wallet.png"),color: Colors.black,))],
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
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
Container(
  padding: EdgeInsets.all(15),
color: Colors.amber,
height: 57,
width: double.infinity,
child:Row(
 
  children: [
    Text("Subtotal",style: TextStyle(color: Colors.white,fontSize: 17),),
    SizedBox(width: 190,),
     Text("2 Items",style: TextStyle(color: Colors.white,fontSize: 15),),

  ],
) ,
),
Container(
  margin: EdgeInsets.only(top: 19),
  child: Column(children: [
ListTile(
  
  leading: Image(image: AssetImage("assets/headphone2.png"),width: 75,height: 85,),
  title: Text("Boat Rockerz 350 on-Ear Bluetooth Headphones",style: TextStyle(fontSize: 12,color: Colors.black)),
  subtitle: Row(children: [
    Container(
      padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(left: 10),
                height: 38,width: 38,
                child: RaisedButton(onPressed: () { },color: Color.fromARGB(223, 255, 7, 19),),),
    SizedBox(width: 50,),
    Text(r"$508",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),),
    SizedBox(width: 30,),
    Container(
      height: 55,
      width: 50,
      child: NumberInputPrefabbed.leafyButtons(
        initialValue: 1,
        incIconSize: 18,
        decIconSize: 18,
        incDecBgColor: Colors.amber,
        incIconColor: Color.fromARGB(255, 12, 12, 11),
        decIconColor: Color.fromARGB(255, 8, 8, 8),
        style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),
  controller: TextEditingController(),
  min: 1,
  max: 20,
),
    )
    
  
  ],),
),
ListTile(
  
  leading: Image(image: AssetImage("assets/headphone1.png"),width: 75,height: 85,),
  title: Text("Boat Rockerz 350 on-Ear Bluetooth Headphones",style: TextStyle(fontSize: 12,color: Colors.black)),
  subtitle: Row(children: [
    Container(
      padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(left: 10),
                height: 38,width: 38,
                child: RaisedButton(onPressed: () { },color: Color.fromARGB(223, 245, 25, 135),),),
    SizedBox(width: 50,),
    Text(r"$702",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),),
    SizedBox(width: 30,),
    Container(
      height: 55,
      width: 50,
      child: NumberInputPrefabbed.leafyButtons(
        initialValue: 1,
        incIconSize: 18,
        decIconSize: 18,
        incDecBgColor: Colors.amber,
        incIconColor: Color.fromARGB(255, 12, 12, 11),
        decIconColor: Color.fromARGB(255, 8, 8, 8),
        style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),
  controller: TextEditingController(),
  min: 1,
  max: 20,
),
    )
    
  
  ],),
)

],),),
Container(
  margin: EdgeInsets.only(top: 30),
  child: Column(children: [

Container(
  padding: EdgeInsets.all(10),
  child:Row(
 
  children: [
    Text("Payment",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
    SizedBox(width: 180,),
     Text("2/4",style: TextStyle(color: Colors.black,fontSize: 16),),

  ],
) , ),
 Container(
  height: 170,
           child:CarouselSlider(
              items: [
             
                Container(
                    height: 150,
                    width: 280,
                    padding: EdgeInsets.all(10),
                    child: creditcard(),

                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [Color.fromARGB(255, 14, 61, 99),Color.fromARGB(255, 31, 83, 126),
                      Color.fromARGB(255, 105, 175, 231)],begin: Alignment.topLeft,end: Alignment.bottomRight))),

                       Container(
                    height: 150,
                    width: 280,
                    padding: EdgeInsets.all(10),
                    child: creditcard(),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [Color.fromARGB(255, 61, 14, 99),Color.fromARGB(255, 110, 31, 126),
                      Color.fromARGB(255, 216, 105, 231)],begin: Alignment.topLeft,end: Alignment.bottomRight))),
            
             Container(
                    height: 150,
                    width: 280,
                    padding: EdgeInsets.all(10),
                    child: creditcard(),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [Color.fromARGB(255, 99, 52, 14),Color.fromARGB(255, 126, 50, 31),
                      Color.fromARGB(255, 231, 134, 105)],begin: Alignment.topLeft,end: Alignment.bottomRight))),
         
          Container(
                    height: 150,
                    width: 280,
                    padding: EdgeInsets.all(10),
                    child: creditcard(),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [Color.fromARGB(255, 99, 86, 14),Color.fromARGB(255, 116, 126, 31),
                      Color.fromARGB(255, 218, 231, 105)],begin: Alignment.topLeft,end: Alignment.bottomRight))),

                        Container(
                    height: 150,
                    width: 280,
                    padding: EdgeInsets.all(10),
                    child: creditcard(),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [Color.fromARGB(255, 245, 134, 7),Color.fromARGB(255, 235, 165, 35),
                      Color.fromARGB(255, 238, 180, 126)],begin: Alignment.topLeft,end: Alignment.bottomRight))),
              ],
              options: CarouselOptions(
                 height: 290,
                 enlargeCenterPage: true,
                 aspectRatio: 16/9,
                 enableInfiniteScroll: true,
                 autoPlayCurve: Curves.slowMiddle,
                 viewportFraction: 0.8,
                 // onPageChanged: 
                 scrollDirection: Axis.horizontal,
              )
            ),),
           

Container(

       height: 60,
            width: 250,
            margin: EdgeInsets.only(top:20),
             decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:Color.fromARGB(255, 233, 89, 6),
        ),
            child: FlatButton(
              textColor: Colors.white,
            child: 
            Text("Check Out" ,style:TextStyle(fontSize: 25,color: Colors.white)),
            onPressed:(){Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddAdress()),
                      );}
            
            
             ),
    ),

],),)

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
