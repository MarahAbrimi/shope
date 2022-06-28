import 'package:flutter/material.dart';

class OTP extends StatelessWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
               height: 55,
               width: 55,
              margin: EdgeInsets.only(left: 6,top: 30,),
              

           decoration: BoxDecoration(
            
                        color: Color.fromARGB(167, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10)),
               
                     child: TextField( 
                       
                        cursorColor: Colors.black,
                        
                        decoration: InputDecoration(
                          
                          ),
                       // textDirection: TextDirection.center,
                      
                        keyboardType:TextInputType.number ,
                        style: TextStyle(fontSize: 20, color:Colors.black),
                        maxLines: 1,
                        maxLength: 1,
                      
                      ),
                   
             
    );
  }
}