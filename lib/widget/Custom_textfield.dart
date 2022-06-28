import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
final bool? obscureText;
 final TextInputType? keyboardType;
 final Widget? prefix;
  const CustomTextField({Key? key,this.labelText,this.keyboardType, this.prefix, this.obscureText, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

 margin: EdgeInsets.only(top: 6),
                      padding: EdgeInsets.only(left: 16,right: 5),
                      child: TextField( 
                      
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          prefix:prefix,
                          prefixStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                          labelText: labelText,
                          hintText:hintText,
                          ),
                         // obscureText:false,
                        textDirection: TextDirection.ltr,
                        keyboardType:keyboardType ,
                        style: TextStyle(fontSize: 15, color:Colors.black),
                      ),

    );
  }
}