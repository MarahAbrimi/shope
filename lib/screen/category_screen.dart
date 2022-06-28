import 'package:flutter/material.dart';
import 'package:marah1/screen/product_screen.dart';
import 'package:marah1/screen/search_screen.dart';
import 'package:marah1/util/responsive.dart';

class category extends StatefulWidget {
  category({Key? key}) : super(key: key);

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  centerTitle: true,
  backgroundColor: Colors.white,
  elevation: 0,
  title: Text("Category List",style: TextStyle(color: Colors.black,fontSize: 25),),),

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
    return Stack(children: [
Container(
  margin: EdgeInsets.all(17),
  //width: 400,
  height: 50,
  decoration: BoxDecoration(
    color: Color.fromARGB(108, 211, 210, 208),
    borderRadius: BorderRadius.circular(10)),
  child: TextField(
    
    cursorColor: Colors.black,
    decoration: InputDecoration(
      hintText: "search",
      prefixIcon: IconButton(
        onPressed: (){
          Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Search()),
                      );
        },
        icon:Icon(Icons.search),)

    ),
  ),
),
Container(
  
  margin: EdgeInsets.only(top: 70),
  child: ListView(
    children: [
    Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 165,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color.fromARGB(181, 238, 150, 177),),
       child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Gadegets",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
           Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
            child:  FlatButton(

                    child: 
                    Text("view more" ,style:TextStyle(fontSize: 12,color: Color.fromARGB(255, 241, 170, 170))),
                    onPressed:(){ }, ),)
       ],),
       ),),

        Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color.fromARGB(181, 142, 222, 233),),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Clothes",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
           Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
            child:  FlatButton(

                    child: 
                    Text("view more" ,style:TextStyle(fontSize: 12,color: Color.fromARGB(255, 241, 170, 170))),
                    onPressed:(){ }, ),)
       ],),
       ),),

        Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color.fromARGB(181, 188, 99, 223),),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Fashion",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
           Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
            child:  FlatButton(

                    child: 
                    Text("view more" ,style:TextStyle(fontSize: 12,color: Color.fromARGB(255, 241, 170, 170))),
                    onPressed:(){ }, ),)
       ],),
       ),),

        Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color.fromARGB(181, 223, 99, 186),),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Tecnology",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
           Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
            child:  FlatButton(

                    child: 
                    Text("view more" ,style:TextStyle(fontSize: 12,color: Color.fromARGB(255, 241, 170, 170))),
                    onPressed:(){ }, ),)
       ],),
       ),),

        Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color.fromARGB(181, 233, 180, 196),),
       child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("clothes",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
           Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
            child:  FlatButton(

                    child: 
                    Text("view more" ,style:TextStyle(fontSize: 12,color: Color.fromARGB(255, 241, 170, 170))),
                    onPressed:(){  Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => product()),
                          );}, ),)
       ],),
       ),),

     


  ]),
)


    ],);
  }
}



class TabContant extends StatelessWidget {
  const TabContant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
