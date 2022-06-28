import 'package:flutter/material.dart';

class backgraund extends StatelessWidget {
  final ImageProvider<Object> Image;
  const backgraund({Key? key, required this.Image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
       Container( 
      decoration: BoxDecoration(
      image: DecorationImage(
      image:AssetImage("assets/p2.webp"),
      fit: BoxFit.cover,
      opacity: 0.5,
      )),
    );
  }
}