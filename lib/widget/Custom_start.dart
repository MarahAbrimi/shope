import 'package:flutter/material.dart';
class CustomStart extends StatelessWidget {
   final String? image;
   final String? text;
   final String? text1;
  const CustomStart({Key? key, this.image, this.text, this.text1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Column(children: [
              Container(
                margin: EdgeInsets.only(top: 250),
                height: 177,
                width: 177,
                child: Image(image: AssetImage(image!)),),
                Container(
                //  margin: EdgeInsets.only(top: 47,left: 80),
                  child: Column(
                      children: [
                  Container(
                    margin: EdgeInsets.only(top: 35,left: 85),
                    child: Text(text!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl)),
                   Container(
                     margin: EdgeInsets.only(top: 20,left: 46),
                     child: Text(text1!,style: TextStyle(fontSize: 17,color:Color.fromARGB(118, 0, 0, 0)),textDirection: TextDirection.ltr)),
                  
                ],),),
               
                   
            ]),));
  }
}

