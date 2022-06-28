import 'package:flutter/material.dart';
import 'package:marah1/screen/Forgot_screen.dart';
import 'package:marah1/screen/signup_screen.dart';
import 'package:marah1/util/responsive.dart';
import 'package:marah1/widget/Customconfirm.dart';

import '../widget/Custom_textfield.dart';

class Confirmpassword extends StatefulWidget {
  Confirmpassword({Key? key}) : super(key: key);

  @override
  State<Confirmpassword> createState() => _ConfirmpasswordState();
}

class _ConfirmpasswordState extends State<Confirmpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    return  Container(
        padding: EdgeInsets.only(left: 25),
         decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/p2.jpg"),
          fit: BoxFit.cover,
          opacity: 0.6,
          )),
        child: Column(
          children: [
          Container(
          
              padding: EdgeInsets.only(top: 170,bottom: 30),
            child: Text("Confirm Your   OTP",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white, 
            shadows: [BoxShadow(
                     blurRadius: 10,
                     color:Color.fromARGB(255, 126, 120, 120),
                    offset: Offset(0, 5),
                   
                  )
                ])),
          ),
           Text("please Waite we are confirming the OTP.",style: TextStyle(fontSize: 19,color: Colors.white)),
         
        
         Column(
           children: [
             Row(
               children: [
               OTP(),
               OTP(),
               OTP(),
               OTP(),
               OTP(),
          
               ],
             ),
             Container(
             margin: EdgeInsets.only(top: 40),
                child:Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text('Resend Again after ',style: TextStyle(fontSize: 12,color: Colors.white),),
                    Text(' 0:39 s ',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                      
                  ],
                ),
              ),
         Container(
           height: 62,
                width: 175,
                margin: EdgeInsets.only(top:77),
                 decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:Color.fromARGB(255, 233, 89, 6),
            ),
                child: FlatButton(
                  textColor: Colors.white,
                child: 
                Text("Verify" ,style:TextStyle(fontSize: 20,color: Colors.white)),
                onPressed:(){
                   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signup()),
                      );
                 }
                
                
                 ),
        ),
           ],
         ),
               
               ]),
        
           );
     
  }
}




class TabContant extends StatelessWidget {
  const TabContant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
       child: Container(
        padding: EdgeInsets.only(left: 25),
         decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/p2.jpg"),
          fit: BoxFit.cover,
          opacity: 0.6,
          )),
        child: Column(
          children: [
          Container(
          
              padding: EdgeInsets.only(top: 170,bottom: 30),
            child: Text("Confirm Your   OTP",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white, 
            shadows: [BoxShadow(
                     blurRadius: 10,
                     color:Color.fromARGB(255, 126, 120, 120),
                    offset: Offset(0, 5),
                   
                  )
                ])),
          ),
           Text("please Waite we are confirming the OTP.",style: TextStyle(fontSize: 19,color: Colors.white)),
         
        
         Column(
           children: [
             Row(
               children: [
               OTP(),
               OTP(),
               OTP(),
               OTP(),
               OTP(),
          
               ],
             ),
             Container(
             margin: EdgeInsets.only(top: 40),
                child:Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text('Resend Again after ',style: TextStyle(fontSize: 12,color: Colors.white),),
                    Text(' 0:39 s ',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                      
                  ],
                ),
              ),
         Container(
           height: 62,
                width: 175,
                margin: EdgeInsets.only(top:77),
                 decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:Color.fromARGB(255, 233, 89, 6),
            ),
                child: FlatButton(
                  textColor: Colors.white,
                child: 
                Text("Verify" ,style:TextStyle(fontSize: 20,color: Colors.white)),
                onPressed:(){
                   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signup()),
                      );
                 }
                
                
                 ),
        ),
           ],
         ),
               
               ]),
        
           ),
     );
  }
}



























