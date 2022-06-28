import 'package:flutter/material.dart';

class creditcard extends StatelessWidget {
  const creditcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text("CREDIT CARD",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),),
                   Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: CircleAvatar(
                            radius:15.0 ,
                            backgroundColor: Color.fromARGB(106, 255, 255, 255),),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(left: 15),
                           child: CircleAvatar(
                            radius:15.0 ,
                            backgroundColor: Color.fromARGB(110, 92, 68, 68),),
                         ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: CircleAvatar(
                              radius:15.0 ,
                              backgroundColor: Color.fromARGB(106, 235, 32, 32),),
                          ),
                   ],)
                        ],),
                        SizedBox(width: 15,),
                       Row(children: [
                         SizedBox(width: 18,),
                         Container(
                          height: 40,width: 45,
                           decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(colors: [Color.fromARGB(255, 239, 244, 248),Color.fromARGB(255, 206, 222, 236),Color.fromARGB(255, 29, 36, 41)],begin: Alignment.topLeft,end: Alignment.bottomRight))
                          ),
                        
                       ],),
                       SizedBox(height: 8,),
                      Row(children: [ Text("4578   ****   ****   ****",style: TextStyle(color: Colors.white,fontSize: 16),), SizedBox(width: 40,),],),
                     Text("NAME",style: TextStyle(color: Color.fromARGB(255, 51, 47, 47)),),
                       Text("Marah Adel Hamdan",style: TextStyle(color: Colors.white),),
                      ],
                    );
  }
}