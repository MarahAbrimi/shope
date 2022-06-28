import 'package:flutter/material.dart';
import 'package:marah1/screen/search_screen.dart';
import 'package:marah1/util/responsive.dart';

class detailsscreen extends StatefulWidget {
  detailsscreen({Key? key}) : super(key: key);

  @override
  State<detailsscreen> createState() => _detailsscreenState();
}

class _detailsscreenState extends State<detailsscreen> {
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
       )
      
    );
  }
}


class MobileContant extends StatelessWidget {
  const MobileContant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(children: [
      Container(
            height: 270,
            width: double.infinity,
          // color: Colors.orange,
            child: Stack(children: [
   Column(
     children: [
       Container(

           height: 50,
                width: 130,
                margin: EdgeInsets.only(top:130,left:230),
                 decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12)),
              color:Color.fromARGB(255, 255, 102, 0),
            ),
                child: FlatButton(
                  textColor: Colors.white,
                child: 
                Text("Buy Now" ,style:TextStyle(fontSize: 15,color: Colors.white)),
                onPressed:(){Navigator.push(context,MaterialPageRoute(builder: (context)=> detailsscreen()));},
                
                
                 ),
        ),
        Container(

           height: 50,
                width: 130,
                margin: EdgeInsets.only(top:10,left:230),
                 decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12)),
              color:Color.fromARGB(255, 255, 102, 0),
            ),
                child: FlatButton(
                  textColor: Colors.white,
                child: 
                Text("Add to Cart" ,style:TextStyle(fontSize: 15,color: Colors.white)),
                onPressed:(){Navigator.push(context,MaterialPageRoute(builder: (context)=> detailsscreen()));},
                
                
                 ),
        ),
     ],
   ),
              Container(
                height: 230,
                width: 230,
                child: Image(image: AssetImage("assets/headphone4.png"),),),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 167,top: 20),
                  child: Text("Boat Rockerz 350 on-Ear Bluetooth Headphones",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold)),)
               
            ]),
            ),
            Container(child: Column(children: [
                  Text("Lorem ipsum dolor sit amet.et velit natus? Et sapiente tenetur est sapiente tenetur est sapiente numquam saepe sed nihil corporis id incidunt eius. Etvel exer",style: TextStyle(fontSize: 17,color: Colors.white,)),
                  Text("Lorem ipsum dolor sit amet. saepe sed nihil  corporis id incidunt eius. t sapiente tenetur est numquam saepe sed nihil Et officia nulla nisi sint vel exercitationem",style: TextStyle(fontSize: 17,color: Color.fromARGB(134, 255, 255, 255))),
                   Text("Color",style: TextStyle(fontSize: 19,color: Color.fromARGB(134, 255, 255, 255))),
                   Container(child: Row(children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                height: 25,width: 25,
                child: RaisedButton(onPressed: () { },color: Color.fromARGB(235, 7, 106, 255),),),
                Container(
                margin: EdgeInsets.only(left: 10),
                height: 25,width: 25,
                child: RaisedButton(
                  
                  onPressed: () { },color: Color.fromARGB(228, 11, 216, 148),),),
                Container(
                margin: EdgeInsets.only(left: 10),
                height: 25,width: 25,
                child: RaisedButton(onPressed: () { },color: Color.fromARGB(232, 238, 38, 24),),),
                Container(
                margin: EdgeInsets.only(left: 10),
                height: 25,width: 25,
                child: RaisedButton(onPressed: () { },color: Color.fromARGB(223, 214, 7, 255),),),
                Container(
                margin: EdgeInsets.only(left: 10),
                height: 25,width: 25,
                child: RaisedButton(onPressed: () { },color: Color.fromARGB(230, 243, 93, 185),),)
            ],),),
            Container(
              margin: EdgeInsets.all(77),
              child: FloatingActionButton(
               backgroundColor: Color.fromARGB(255, 255, 102, 0),
                child: Text("open"),
                onPressed:(){showBottomSheet(
                  backgroundColor: Color.fromARGB(209, 250, 246, 246),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                  context: context, builder: (context){
                return SingleChildScrollView(child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Container(
                          width: 130,
                          child: Column(
                          children: [
                            Image(image: AssetImage("assets/headphone2.png"),height: 155,width: 155,),
                            Text("boat Rockers 400 On-Ear Blutooth Headphones",style: TextStyle(fontSize: 13),),
                            Text(r"$88.33",style: TextStyle(fontWeight: FontWeight.bold),),
                
                          ],
                        ),),
                
                        Container(
                          width: 130,
                          child: Column(
                          children: [
                            Image(image: AssetImage("assets/headphone3.png"),height: 155,width: 155,),
                            Text("boat Rockers 500 On-Ear Blutooth Headphones",style: TextStyle(fontSize: 13),),
                            Text(r"$40.59",style: TextStyle(fontWeight: FontWeight.bold),),
                
                          ],
                        ),),
                        
                
                      ],),
                      ),
            Container(

           height: 60,
                width: 200,
                margin: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              color:Color.fromARGB(255, 255, 102, 0),
            ),
                child: FlatButton(
                  textColor: Colors.white,
                child: 
                Text("Confirm" ,style:TextStyle(fontSize: 20,color: Colors.white)),
                onPressed:(){Navigator.push(context,MaterialPageRoute(builder: (context)=> detailsscreen()));},
                
                
                 ),
        ),

                  ],
                ),
              
                
                );
              });}),
            )
            ],
            
            ),)
    ],));
  }
}



class TabContant extends StatelessWidget {
  const TabContant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
