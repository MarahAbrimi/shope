import 'package:flutter/material.dart';

class tab2 extends StatelessWidget {
  final dynamic? image;
  final String? text;
  const tab2({Key? key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(172, 255, 255, 255),
      width: 240,
      child: Row(children: [
      Text(text!,style: TextStyle(color: Colors.black,fontSize: 17),),
      Image(image:NetworkImage(image!),width: 70,height: 70,),

    ],),);
  }
}