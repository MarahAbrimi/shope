
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget Mobile;
  final Widget tab;
  const ResponsiveLayout({required this.Mobile, required this.tab}) ;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth>=800){
          return tab ;
          
        }else{
          return Mobile;
        }
      })
    );
  }
}