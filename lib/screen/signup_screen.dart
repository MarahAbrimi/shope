import 'package:flutter/material.dart';
import 'package:marah1/screen/Forgot_screen.dart';
import 'package:marah1/screen/splash_screen.dart';
import 'package:marah1/screen/test1.dart';
import 'package:marah1/util/responsive.dart';
import 'package:marah1/widget/Custom_botton.dart';
import 'package:marah1/widget/Custom_textfield.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
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
     
            padding: EdgeInsets.only(top: 165,bottom: 30),
          child: Text("Glad To Meet   You",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white, 
          shadows: [BoxShadow(
                   blurRadius: 10,
                   color:Color.fromARGB(255, 126, 120, 120),
                  offset: Offset(0, 5),
                 
                )
              ])),
        ),
         Text("Create your new account for future uses.",style: TextStyle(fontSize: 17,color: Colors.white)),
        
      
       Container(
         child: Stack(
           children: [
             Container(
                    margin: EdgeInsets.only(left: 6,top: 20,),
                      height: 235,
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
                     CustomTextField(
                      labelText: "Confirm Password",
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                
                 ],
                 
               ),
               
             ),
              Container(
       
               height: 50,
                    width: 160,
                    margin: EdgeInsets.only(top: 240,left: 77),
                     decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:Color.fromARGB(255, 233, 89, 6),
                ),
                    child: FlatButton(
                      textColor: Colors.white,
                    child: 
                    Text("Register" ,style:TextStyle(fontSize: 27,color: Colors.white)),
                    onPressed:(){
                     Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => test()),
                          );
                     
               }, ),
               ),
            
           ],
         ),
         
       ),
         
        
          
        Container(
             margin: EdgeInsets.only(top: 65),
              child:Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text('you can sign in with ',style: TextStyle(fontSize: 12,color: Colors.white),),
                  Container(
                    margin: EdgeInsets.only(left: 115),
                    child:
                    Row(children: [
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.facebook, color: Colors.white)),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.google, color: Colors.white)),
                    ],)
                  )
                ],
              ),
            ),
             
        
         ]),
       ),
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
     
            padding: EdgeInsets.only(top: 165,bottom: 30),
          child: Text("Glad To Meet   You",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white, 
          shadows: [BoxShadow(
                   blurRadius: 10,
                   color:Color.fromARGB(255, 126, 120, 120),
                  offset: Offset(0, 5),
                 
                )
              ])),
        ),
         Text("Create your new account for future uses.",style: TextStyle(fontSize: 17,color: Colors.white)),
        
      
       Container(
         child: Stack(
           children: [
             Container(
                    margin: EdgeInsets.only(left: 6,top: 20,),
                      height: 235,
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
                     CustomTextField(
                      labelText: "Confirm Password",
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                
                 ],
                 
               ),
               
             ),
              Container(
       
               height: 50,
                    width: 160,
                    margin: EdgeInsets.only(top: 240,left: 77),
                     decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:Color.fromARGB(255, 233, 89, 6),
                ),
                    child: FlatButton(
                      textColor: Colors.white,
                    child: 
                    Text("Register" ,style:TextStyle(fontSize: 27,color: Colors.white)),
                    onPressed:(){
                     Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => test()),
                          );
                     
               }, ),
               ),
            
           ],
         ),
         
       ),
         
        
          
        Container(
             margin: EdgeInsets.only(top: 65),
              child:Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text('you can sign in with ',style: TextStyle(fontSize: 12,color: Colors.white),),
                  Container(
                    margin: EdgeInsets.only(left: 115),
                    child:
                    Row(children: [
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.facebook, color: Colors.white)),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.google, color: Colors.white)),
                    ],)
                  )
                ],
              ),
            ),
             
        
         ]),
       ),
     );
  }
}





