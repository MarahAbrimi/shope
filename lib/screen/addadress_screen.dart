import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marah1/util/responsive.dart';

class AddAdress extends StatefulWidget {
  AddAdress({Key? key}) : super(key: key);

  @override
  State<AddAdress> createState() => _AddAdressState();
}

class _AddAdressState extends State<AddAdress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(elevation: 0,backgroundColor: Colors.white,
      title: Text("ِAdress",style: TextStyle(fontSize: 16,color: Colors.black),),
      centerTitle: true,
      leading: IconButton(onPressed: (){
         Navigator.pop(context);
      },icon: Icon(Icons.arrow_back,color: Colors.black,),),
      ),
      body: ResponsiveLayout(
       Mobile: MobileContant(),
       tab: TabContant(),
       ));
  }
}



class MobileContant extends StatelessWidget {
  bool x=false;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
children: [
  Container(
    height: 110,
   child: Container( margin: EdgeInsets.only(left: 10,top: 10),
    child:SingleChildScrollView(scrollDirection: Axis.horizontal,
  child:Row(children: [
     Container(
                    height: 250,
                    width: 165,
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.all(10),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.home,size: 35,color: Colors.black,),
                       Text("Home",style: TextStyle(fontSize: 14,color: Colors.black),)
                     ],
                   ),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Color.fromARGB(188, 255, 193, 7)
                    )),
 Container(
                    height: 250,
                    width: 165,
                    padding: EdgeInsets.all(10),
                     margin: EdgeInsets.only(right: 10),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.location_city,size: 35,color: Colors.black,),
                       Text("City",style: TextStyle(fontSize: 14,color: Colors.black),)
                     ],
                   ),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Color.fromARGB(188, 255, 193, 7)
                    )),
 Container(
                    height: 250,
                    width: 165,
                    padding: EdgeInsets.all(10),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.work,size: 35,color: Colors.black,),
                       Text("Work",style: TextStyle(fontSize: 14,color: Colors.black),)
                     ],
                   ),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Color.fromARGB(188, 255, 193, 7)
                    )),
  ],))),),
   
      Container(
        margin: const EdgeInsets.only(top: 10,left: 10,right: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(113, 255, 255, 255),),
        child: TextField( cursorColor: Colors.black,
                         // keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                          prefixStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                          enabledBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white), ),
                            label:Text("Flat Number/House Number"),
                            labelStyle: TextStyle(color: Color.fromARGB(131, 0, 0, 0))
                            ),),
      ),

       Container(
        margin: const EdgeInsets.only(top: 20,left: 10,right: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(113, 255, 255, 255),),
        child: TextField( cursorColor: Colors.black,
                        //  keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                          prefixStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                          enabledBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white),),
                            label:Text("Street"),
                            labelStyle: TextStyle(color: Color.fromARGB(131, 0, 0, 0))
                            ),),
      ),


      Container(
        margin: const EdgeInsets.only(top: 20,left: 10,right: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(112, 243, 139, 139),),
        child: TextField( cursorColor: Colors.black,
                        //  keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                          prefixStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                          enabledBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white),),
                            label:Text("Area"),
                            labelStyle: TextStyle(color: Color.fromARGB(131, 0, 0, 0))
                            ),),
      ),

       Container(
        margin: const EdgeInsets.only(top: 20,left: 10,right: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(113, 255, 255, 255),),
        child: TextField( cursorColor: Colors.black,
                        //  keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                          prefixStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                          enabledBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white),),
                            label:Text("LandMark"),
                            labelStyle: TextStyle(color: Color.fromARGB(131, 0, 0, 0))
                            ),),
      ),

 Container(
        margin: const EdgeInsets.only(top: 20,left: 10,right: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(113, 255, 255, 255),),
        child: TextField( cursorColor: Colors.black,
                        //  keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                          prefixStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                          enabledBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white),),
                            label:Text("PinCode *"),
                            labelStyle: TextStyle(color: Color.fromARGB(131, 0, 0, 0))
                            ),),
      ),
      Container(
        margin: EdgeInsets.all(5),
        child:Row(children: [
Checkbox(value: x, onChanged:(val){},activeColor: Colors.amber,),
Text("Add this Adressto bookmark",style: TextStyle(fontSize: 16,color: Color.fromARGB(131, 0, 0, 0)),),
      ],) ,),

       Container(

       height: 60,
            width: 250,
           margin: EdgeInsets.only(top:6),
             decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:Color.fromARGB(255, 233, 89, 6),
        ),
            child: FlatButton(
              textColor: Colors.white,
            child: 
            Text("Finish" ,style:TextStyle(fontSize: 25,color: Colors.white)),
            onPressed:(){}
            
            
             ),
    ),



],

      ),
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

