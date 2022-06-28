import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final Color? color;
  final void Function()? onPressed;
  final String? text;
  final double? height;

 
  const button({Key? key,this.color,this.onPressed,this.text, this.height,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

       height: height,
            width: 170,
            margin: EdgeInsets.only(top:10),
             decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:color,
        ),
            child: FlatButton(
              textColor: Colors.white,
            child: 
            Text(text! ,style:TextStyle(fontSize: 22,color: Colors.white)),
            onPressed:onPressed
            
            
             ),
    );
  }
}