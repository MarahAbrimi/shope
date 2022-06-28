import 'package:flutter/material.dart';
import 'package:marah1/screen/Forgot_screen.dart';
import 'package:marah1/screen/splash_screen.dart';
import 'package:marah1/util/responsive.dart';
import 'package:marah1/widget/Custom_botton.dart';
import 'package:marah1/widget/Custom_textfield.dart';


class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
          child: Text("Welcome Back Roberto,",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white, 
          shadows: [BoxShadow(
                   blurRadius: 10,
                   color:Color.fromARGB(255, 126, 120, 120),
                  offset: Offset(0, 5),
                 
                )
              ])),
        ),
         Text("Login to your account using Mobile number",style: TextStyle(fontSize: 19,color: Colors.white)),
        
       
     
       Container(
         child: Stack(
           children: [
             Container(
                    margin: EdgeInsets.only(left: 6,top: 30,),
       height: 180,
                 decoration: BoxDecoration(
                       // color: Colors.white,
                       // opacity:0,1
                        color: Color.fromARGB(167, 255, 255, 255),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12))),
             
               child: Column(
                
                 children: [
                   
                  
                    CustomTextField(
                      labelText: "Email",
                      keyboardType: TextInputType.emailAddress,
                      
                    ),
                     CustomTextField(
                      labelText: "Password",
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                  
              
                 ],
                 
               ),
               
             ),
             Container(
               margin: EdgeInsets.only(top: 165,left: 77),
               child: button(
                 
                    color:Color.fromARGB(255, 233, 89, 6) ,
                    text: "Log In",
                    onPressed:(){Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Splashscreen()),
                      );} ,
                      height: 50,
                  ),
             )
           ],
         ),
         
         
       ),
         
        SizedBox(height: 60,),
          
        Container(
             margin: EdgeInsets.only(top: 132),
              child:Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text('Forgot Your Password? ',style: TextStyle(fontSize: 12,color: Colors.white),),
                  RawMaterialButton(
                    onPressed: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => forgotpassword()),
                    );},
                    child: Text(' Reset Password',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                    
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
          child: Text("Welcome Back Roberto,",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white, 
          shadows: [BoxShadow(
                   blurRadius: 10,
                   color:Color.fromARGB(255, 126, 120, 120),
                  offset: Offset(0, 5),
                 
                )
              ])),
        ),
         Text("Login to your account using Mobile number",style: TextStyle(fontSize: 19,color: Colors.white)),
        
       
     
       Container(
         child: Stack(
           children: [
             Container(
                    margin: EdgeInsets.only(left: 6,top: 30,),
       height: 180,
                 decoration: BoxDecoration(
                       // color: Colors.white,
                       // opacity:0,1
                        color: Color.fromARGB(167, 255, 255, 255),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12))),
             
               child: Column(
                
                 children: [
                   
                  
                    CustomTextField(
                      labelText: "Email",
                      keyboardType: TextInputType.emailAddress,
                      
                    ),
                     CustomTextField(
                      labelText: "Password",
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                  
              
                 ],
                 
               ),
               
             ),
             Container(
               margin: EdgeInsets.only(top: 165,left: 77),
               child: button(
                 
                    color:Color.fromARGB(255, 233, 89, 6) ,
                    text: "Log In",
                    onPressed:(){Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Splashscreen()),
                      );} ,
                      height: 50,
                  ),
             )
           ],
         ),
         
         
       ),
         
        
          
        Container(
             margin: EdgeInsets.only(top: 132),
              child:Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text('Forgot Your Password? ',style: TextStyle(fontSize: 12,color: Colors.white),),
                  RawMaterialButton(
                    onPressed: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => forgotpassword()),
                    );},
                    child: Text(' Reset Password',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                    
                  ),
                ],
              ),
            ),
             
        
         ]),
       ),
     );
  }
}




























