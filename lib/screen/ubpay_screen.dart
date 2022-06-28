import 'package:flutter/material.dart';
import 'package:marah1/screen/checkout_screen.dart';
import 'package:marah1/util/responsive.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

class UnpayedScreen extends StatefulWidget {
  UnpayedScreen({Key? key}) : super(key: key);

  @override
  State<UnpayedScreen> createState() => _unpayedScreenState();
}

class _unpayedScreenState extends State<UnpayedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Unpaid",style: TextStyle(color: Colors.black,fontSize: 20),),
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
    return SingleChildScrollView(child: Column(
  //    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
         elevation: 8,
          margin: EdgeInsets.all(15),
          
  child: Column(
    children: [
      Container(
     // color: Colors.amber,
        height: 150,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: ListTile(
        
        leading: Image(image: AssetImage("assets/headphone2.png"),width: 63,height: 92,),
        title: Text("Boat Rockerz 350 on-Ear Bluetooth Headphones",style: TextStyle(fontSize: 13,color: Colors.black)),
        subtitle: Row(children: [
          Container(
            padding: EdgeInsets.all(7),
                    //  margin: EdgeInsets.only(left: 5),
                      height: 38,width: 38,
                      child: RaisedButton(onPressed: () { },color: Color.fromARGB(223, 255, 7, 19),),),
          SizedBox(width: 10,),
          Text(r"$498",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),),
          SizedBox(width: 8,),
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
      ),
      Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
           
                Text("User Promo Code",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),),

          
      
      TextField( cursorColor: Colors.black,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                        prefixStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                          hintText:"Type Promo Code",
                          hintStyle: TextStyle(color: Color.fromARGB(131, 0, 0, 0))
                          ),),
                          ],
        ),
  ),
    ],
  ),
),
  //  SizedBox(height: 20,) ,
   Card(
    margin: EdgeInsets.all(15),
   elevation: 8,
   child: Container(
    height: 220,
    width: double.infinity,
  child: Container(
    padding: EdgeInsets.all(15),
    child: Column(
      children: [
        Row(
        children: [
          Text("Boat Rockerz 350 on-Ear",style: TextStyle(color: Color.fromARGB(167, 0, 0, 0),fontSize: 14),),
          SizedBox(width: 52,),
          Text("74.30",style: TextStyle(color: Color.fromARGB(167, 0, 0, 0),fontSize: 15),),
        ],
        ),
       SizedBox(height: 12,),
        Row(
        children: [
          Text("Tax",style: TextStyle(color: Color.fromARGB(167, 0, 0, 0),fontSize: 14),),
          SizedBox(width:196,),
          Text("1.20",style: TextStyle(color: Color.fromARGB(167, 0, 0, 0),fontSize: 15),),
        ],
        ),
 SizedBox(height: 12,),
        Row(
        children: [
          Text("Subtotal",style: TextStyle(color: Color.fromARGB(167, 0, 0, 0),fontSize: 14),),
          SizedBox(width: 168,),
          Text("73.10",style: TextStyle(color: Color.fromARGB(167, 0, 0, 0),fontSize: 15),),
        ],
        ),
 SizedBox(height: 12,),
        Row(
        children: [
          Text("Promocode",style: TextStyle(color: Color.fromARGB(167, 0, 0, 0),fontSize: 14),),
          SizedBox(width: 140,),
          Text("-10.30",style: TextStyle(color: Color.fromARGB(167, 0, 0, 0),fontSize: 15),),
        ],
        ),
         SizedBox(height: 15,),
         Text("____________________________________",style: TextStyle(color: Color.fromARGB(69, 0, 0, 0)),),
 SizedBox(height: 10,),
 Row(
        children: [
          Text("Total",style: TextStyle(color: Color.fromARGB(167, 0, 0, 0),fontSize: 21,fontWeight: FontWeight.bold),),
          SizedBox(width: 130,),
          Text(r"$ 66,80",style: TextStyle(color: Color.fromARGB(167, 0, 0, 0),fontSize: 21,fontWeight: FontWeight.bold),),
        ],
        ),

      ],
    ),
  )
   )
   ),
   Container(

       height: 50,
            width: 250,
          //  margin: EdgeInsets.only(top:10),
             decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:Color.fromARGB(255, 233, 89, 6),
        ),
            child: FlatButton(
              textColor: Colors.white,
            child: 
            Text("Pay Now" ,style:TextStyle(fontSize: 25,color: Colors.white)),
            onPressed:(){Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => checkout()),
                      );}
            
            
             ),
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
