import 'package:flutter/material.dart';
import 'package:marah1/screen/detproduct_screen.dart';
import 'package:marah1/screen/search_screen.dart';
import 'package:marah1/screen/signup_screen.dart';
import 'package:marah1/util/responsive.dart';
import 'package:marah1/widget/Custom_botton.dart';

class product extends StatefulWidget {
  product({Key? key}) : super(key: key);

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 252, 206, 67),
         appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 252, 206, 67),
          elevation: 0,
          centerTitle: true,
          leading: IconButton(icon:  Icon(Icons.category,color: Colors.black,),onPressed: (){},),
           title: Text("HeadPhones",style: TextStyle(color: Colors.black,fontSize: 25),),
           actions: [IconButton(icon:  Icon(Icons.search,color: Colors.black,),onPressed: (){
            Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Search()),
                      );
           },)],
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
    return Column(
        children: [
          Container(
            height: 350,
            width: double.infinity,
          // color: Colors.orange,
            child: Stack(children: [
          Container(
                              height: 62,
                              width: 180,
                              margin: EdgeInsets.only(left: 180,top: 60),
                               decoration: BoxDecoration(color: Color.fromARGB(216, 0, 0, 0), 
                               borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                                child: Text(r"      $102.36",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),), ),
              Container(
                height: 730,
                width: 730,
                child: Image(image: AssetImage("assets/headphone4.png"),),),
               
            ]),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Stack(
                children: [
                  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Boat Rockerz 350 on-Ear Bluetooth Headphones",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold)),
                  Text("Lorem ipsum dolor sit amet.et velit natus? Et sapiente tenetur est sapiente tenetur est sapiente numquam saepe sed nihil corporis id incidunt eius. Et",style: TextStyle(fontSize: 17,color: Colors.white,)),
                  Text("Lorem ipsum dolor sit amet. saepe sed nihil  corporis id incidunt eius. t sapiente tenetur est numquam saepe sed nihil Et officia nulla nisi sint vel exercitationem",style: TextStyle(fontSize: 17,color: Color.fromARGB(134, 255, 255, 255))),
            ]),
           
           Container(

       height: 70,
            width: 340,
            margin: EdgeInsets.only(top:210),
             decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:Color.fromARGB(255, 255, 102, 0),
        ),
            child: FlatButton(
              textColor: Colors.white,
            child: 
            Text("View Product" ,style:TextStyle(fontSize: 22,color: Colors.white)),
            onPressed:(){
                     Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => detailsscreen()),
                          );
                     
               }, 
            
            
             ),
    ),
                ],
              ),)
          
        ],
      
    );
  }
}



class TabContant extends StatelessWidget {
  const TabContant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            height: 350,
            width: double.infinity,
          // color: Colors.orange,
            child: Stack(children: [
          Container(
                              height: 62,
                              width: 180,
                              margin: EdgeInsets.only(left: 180,top: 60),
                               decoration: BoxDecoration(color: Color.fromARGB(216, 0, 0, 0), 
                               borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                                child: Text(r"      $102.36",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),), ),
              Container(
                height: 730,
                width: 730,
                child: Image(image: AssetImage("assets/headphone4.png"),),),
               
            ]),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Stack(
                children: [
                  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Boat Rockerz 350 on-Ear Bluetooth Headphones",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold)),
                  Text("Lorem ipsum dolor sit amet.et velit natus? Et sapiente tenetur est sapiente tenetur est sapiente numquam saepe sed nihil corporis id incidunt eius. Et",style: TextStyle(fontSize: 17,color: Colors.white,)),
                  Text("Lorem ipsum dolor sit amet. saepe sed nihil  corporis id incidunt eius. t sapiente tenetur est numquam saepe sed nihil Et officia nulla nisi sint vel exercitationem",style: TextStyle(fontSize: 17,color: Color.fromARGB(134, 255, 255, 255))),
            
            ]),
           
           Container(
        height: 70,
             width: 340,
            margin: EdgeInsets.only(top:210),
             decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:Color.fromARGB(255, 255, 102, 0),
        ),
            child: FlatButton(
              textColor: Colors.white,
            child: 
            Text("View Product" ,style:TextStyle(fontSize: 22,color: Colors.white)),
             onPressed:(){
                     Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => detailsscreen()),
                          );
                     
               }, 
            
            
             ),
    ),
                ],
              ),)
          
        ],
      
    );
  }
}