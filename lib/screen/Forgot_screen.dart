import 'package:flutter/material.dart';
import 'package:marah1/screen/ConfirmOTP.dart';
import 'package:marah1/screen/splash_screen.dart';
import 'package:marah1/util/responsive.dart';
import 'package:marah1/widget/Custom_botton.dart';

import '../widget/Custom_textfield.dart';

class forgotpassword extends StatefulWidget {
  forgotpassword({Key? key}) : super(key: key);

  @override
  State<forgotpassword> createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
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
    return Container(
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
          child: Text("Forgot Your   Password?",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white, 
          shadows: [BoxShadow(
                   blurRadius: 10,
                   color:Color.fromARGB(255, 126, 120, 120),
                  offset: Offset(0, 5),
                 
                )
              ])),
             ),
         Text("Enter your registered mobile number to get the OTP",style: TextStyle(fontSize: 19,color: Colors.white)),
          
            Container(
         child: Stack(
           children: [
             Container(
                    margin: EdgeInsets.only(left: 6,top: 30,),
                    height: 100,
                 decoration: BoxDecoration(
                       // color: Colors.white,
                       // opacity:0,1
                        color: Color.fromARGB(167, 255, 255, 255),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12))),
               child: Row(children: [
                  Container(

                    width: 45,
                    child: CustomTextField(
                      
                        keyboardType: TextInputType.number,
                   hintText: "+1",
                      ),
                  ),
                   Container(
                    width: 250,

                    child: CustomTextField(
                      
                        keyboardType: TextInputType.phone,
                   
                      ),
                  ),
                    
                    //  CustomTextField(
                    //   keyboardType: TextInputType.phone,
                     
                    // ),
                   
                      
               ]),
             ),
        
            Container( 
              margin: EdgeInsets.only(top: 110,left: 77),
              child:  button(
                        color:Color.fromARGB(255, 233, 89, 6) ,
                        text: "Send OTP",
                        onPressed:(){} ,
                        height: 62,
                      ),
       
            )
           ],
         ),
            ),
           
          
           
             Container(
         //    margin: EdgeInsets.only(top: 120),
              child:Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text('Didnt received the OTP? ',style: TextStyle(fontSize: 12,color: Colors.white),),
                  RawMaterialButton(
                    onPressed: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Confirmpassword()),
                    );},
                    child: Text(' Resend Again',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                    
                  ),
                ],
              ),
            ),
             
             ]),
            );
  }
}



class TabContant extends StatelessWidget {
  const TabContant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          child: Text("Forgot Your   Password?",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white, 
          shadows: [BoxShadow(
                   blurRadius: 10,
                   color:Color.fromARGB(255, 126, 120, 120),
                  offset: Offset(0, 5),
                 
                )
              ])),
             ),
         Text("Enter your registered mobile number to get the OTP",style: TextStyle(fontSize: 19,color: Colors.white)),
          
            Container(
         child: Stack(
           children: [
             Container(
                    margin: EdgeInsets.only(left: 6,top: 30,),
                    height: 100,
                 decoration: BoxDecoration(
                       // color: Colors.white,
                       // opacity:0,1
                        color: Color.fromARGB(167, 255, 255, 255),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12))),
               child: Row(children: [
                  Container(

                    width: 45,
                    child: CustomTextField(
                      
                        keyboardType: TextInputType.number,
                   hintText: "+1",
                      ),
                  ),
                   Container(
                    width: 250,

                    child: CustomTextField(
                      
                        keyboardType: TextInputType.phone,
                   
                      ),
                  ),
                    
                    //  CustomTextField(
                    //   keyboardType: TextInputType.phone,
                     
                    // ),
                   
                      
               ]),
             ),
        
            Container( 
              margin: EdgeInsets.only(top: 110,left: 77),
              child:  button(
                        color:Color.fromARGB(255, 233, 89, 6) ,
                        text: "Send OTP",
                        onPressed:(){} ,
                        height: 62,
                      ),
       
            )
           ],
         ),
            ),
           
          
           
             Container(
         //    margin: EdgeInsets.only(top: 120),
              child:Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text('Didnt received the OTP? ',style: TextStyle(fontSize: 12,color: Colors.white),),
                  RawMaterialButton(
                    onPressed: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Confirmpassword()),
                    );},
                    child: Text(' Resend Again',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                    
                  ),
                ],
              ),
            ),
             
             ]),
            );
  }
}









// class MobileContant extends StatelessWidget {
//   const MobileContant({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }



// class TabContant extends StatelessWidget {
//   const TabContant({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
