import 'package:flutter/material.dart';
import 'package:marah1/util/responsive.dart';
import 'package:marah1/widget/Custom_Checkout.dart';

class Payment extends StatefulWidget {
  Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Payment",style: TextStyle(color: Colors.black,fontSize: 20),),
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
      children: [
        Container(
          margin: EdgeInsets.only(top: 20,left: 35,right: 35,bottom: 20),
                    height: 160,
                    width: 290,
                    padding: EdgeInsets.all(10),
                    child: creditcard(),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [Color.fromARGB(255, 245, 134, 7),Color.fromARGB(255, 235, 165, 35),
                      Color.fromARGB(255, 238, 180, 126)],begin: Alignment.topLeft,end: Alignment.bottomRight))),
  
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
         InkWell(
           child: Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 35,width: 35,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(colors: [Color.fromARGB(255, 14, 61, 99),Color.fromARGB(255, 31, 83, 126),
                      Color.fromARGB(255, 105, 175, 231)],begin: Alignment.topLeft,end: Alignment.bottomRight)),)
         ),
         InkWell(
           child: Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 35,width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(colors: [Color.fromARGB(255, 61, 14, 99),Color.fromARGB(255, 110, 31, 126),
                      Color.fromARGB(255, 216, 105, 231)],begin: Alignment.topLeft,end: Alignment.bottomRight)),)
         ),
          InkWell(
           child: Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 42,width: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(colors: [Color.fromARGB(255, 245, 134, 7),Color.fromARGB(255, 235, 165, 35),
                      Color.fromARGB(255, 238, 180, 126)],begin: Alignment.topLeft,end: Alignment.bottomRight)),)
         ),
          InkWell(
           child: Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 35,width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(colors: [Color.fromARGB(255, 99, 52, 14),Color.fromARGB(255, 126, 50, 31),
                      Color.fromARGB(255, 231, 134, 105)],begin: Alignment.topLeft,end: Alignment.bottomRight)),)
         ),
          InkWell(
           child: Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 35,width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(colors: [Color.fromARGB(255, 99, 86, 14),Color.fromARGB(255, 116, 126, 31),
                      Color.fromARGB(255, 218, 231, 105)],begin: Alignment.topLeft,end: Alignment.bottomRight)),)
         ),
      ],),

       Card(
    margin: EdgeInsets.all(20),
   elevation: 8,
   child: Container(
    height: 250,
    width: double.infinity,
  child: Container(
    padding: EdgeInsets.all(15),
    child: Column(
    children: [
   Container(
     margin: const EdgeInsets.only(top: 10,left: 10,right: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color.fromARGB(20, 196, 192, 192),),
     child: TextField( 
      cursorColor: Colors.black,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                          prefixStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                            hintText:"Card Number",
                            hintStyle: TextStyle(fontSize: 15,color: Color.fromARGB(131, 0, 0, 0))
                            ),),
   ),
   Row(children: [
    Container(
      width: 70,
     margin: const EdgeInsets.only(top: 10,left: 10,right: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color.fromARGB(20, 196, 192, 192),),
     child: TextField( 
      cursorColor: Colors.black,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                          prefixStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                            hintText:"Month",
                            hintStyle: TextStyle(fontSize: 13,color: Color.fromARGB(131, 0, 0, 0))
                            ),),
   ),
    Container(
      width: 70,
     margin: const EdgeInsets.only(top: 10,left: 10,right: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color.fromARGB(20, 196, 192, 192),),
     child: TextField( 
      cursorColor: Colors.black,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                          prefixStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                            hintText:"Year",
                            hintStyle: TextStyle(fontSize: 14,color: Color.fromARGB(131, 0, 0, 0))
                            ),),
   ),
    Container(
      width: 70,
     margin: const EdgeInsets.only(top: 10,left: 10,right: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color.fromARGB(20, 196, 192, 192),),
     child: TextField( 
      cursorColor: Colors.black,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                          prefixStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                            hintText:"CVV",
                            hintStyle: TextStyle(fontSize: 14,color: Color.fromARGB(131, 0, 0, 0))
                            ),),
   ),
   ],),
    Container(
     margin: const EdgeInsets.only(top: 10,left: 10,right: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color.fromARGB(20, 196, 192, 192),),
     child: TextField( 
      cursorColor: Colors.black,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                          prefixStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                            hintText:"Name On Card",
                            hintStyle: TextStyle(fontSize: 15,color: Color.fromARGB(131, 0, 0, 0))
                            ),),
   ),

   
    ],
    ),
  )
   )
   ),
   Container(

       height: 60,
            width: 250,
             decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:Color.fromARGB(255, 233, 89, 6),
        ),
            child: FlatButton(
              textColor: Colors.white,
            child: 
            Text("Add this Card" ,style:TextStyle(fontSize: 20,color: Colors.white)),
            onPressed:(){
              // Navigator.push(
              //           context,
              //           MaterialPageRoute(builder: (context) => ()),
              //         );
                      }
            
            
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
