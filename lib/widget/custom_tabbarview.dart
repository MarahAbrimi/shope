import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class tab extends StatelessWidget {
   final String? image;
  const tab({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 210,
              height: 260,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 252, 206, 67),
                borderRadius: BorderRadius.circular(20)) ,),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          //margin: EdgeInsets.only(right: 30),
                          child: Image(image: AssetImage(image!)),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 75),
                          child: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.heart, color: Color.fromARGB(255, 216, 21, 21))))
                      ],
                    ),
                                       Container(
                      margin: EdgeInsets.only(top: 20,right: 80),
                      child: Column(
                       // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("SkullCandy headphone",style: TextStyle(color: Colors.white,fontSize: 16),),
                    
                         Row(
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("L325",style: TextStyle(color: Colors.white,fontSize: 17),)),
                             Container(
                              height: 35,
                              width: 94,
                              margin: EdgeInsets.only(left: 60),
                               decoration: BoxDecoration(color: Color.fromARGB(255, 221, 94, 10), 
                               borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                                child: Text(r" $102.36",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),), ),
                           ],
                         )           ],
                    )),
                    
                  ],
                )
          ],
        ),
      ],
    );
  }
}