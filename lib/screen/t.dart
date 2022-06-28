import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marah1/widget/Custom_tabbar2.dart';

class t extends StatefulWidget {
  t({Key? key}) : super(key: key);

  @override
  State<t> createState() => _tState();
}

class _tState extends State<t> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    
      length: 5,

      child: Column(
          children: [
            Container(
              child: TabBar(
                indicatorColor: Colors.amber,
                isScrollable: true,
                tabs: [
                      Tab(child: Text("Trending",style: TextStyle(color: Color.fromARGB(118, 0, 0, 0),fontSize: 13),),),
                      Tab(child: Text("Sport",style: TextStyle(color:  Color.fromARGB(118, 0, 0, 0),fontSize: 13),),),
                       Tab(child: Text("Wireless",style: TextStyle(color:  Color.fromARGB(118, 0, 0, 0),fontSize: 13),),),
                        Tab(child: Text("Headset",style: TextStyle(color:  Color.fromARGB(118, 0, 0, 0),fontSize: 13),),),
                    Tab(child: Text("Bags",style: TextStyle(color:  Color.fromARGB(118, 0, 0, 0),fontSize: 13),),),
                  
                ]),
            ),
            Container(
              width: 300,
              height: 100,
              child: TabBarView(children: [
       Container(
    child:CarouselSlider(
       items: [
        tab2(text: "Shoes & Bags",image: "https://ae01.alicdn.com/kf/Hd36a985022af44f98328c63a04c93b500/2021-Lastest-Noble-and-Elegangt-Fashionable-Special-Style-Ladies-Shoes-and-Bag-Set-in-Green-Color.jpg_350x350q80.jpg.webp",),
        tab2(text: "Watches",image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/rolex-explorer-best-field-watches-refresh-su-1654536937.jpeg",),
        tab2(text: "Clothes",image: "https://static.onecms.io/wp-content/uploads/sites/34/2022/03/02/new-clothes-clothing-rack-getty-0222-2000.jpg",),
        tab2(text: "Headset",image: "https://nypost.com/wp-content/uploads/sites/2/2022/03/headphones-feature-image.png?w=1024",),
         
   
       ],
       options: CarouselOptions(
          height: 190,
          enlargeCenterPage: true,
          aspectRatio: 16/9,
          enableInfiniteScroll: true,
          autoPlayCurve: Curves.slowMiddle,
          viewportFraction: 0.8,
          // onPageChanged: 
          scrollDirection: Axis.horizontal,
       )
     ),),
      Container(color: Color.fromRGBO(201, 90, 90, 1),),
      Container(color: Color.fromARGB(255, 177, 98, 98),),
      Container(color: Color.fromARGB(255, 58, 42, 42),),
      Container(color: Color.fromARGB(255, 136, 103, 103),),
      
            ]),)
          ],
        ),
      );
      
         
      
    
      
    
      
  }
}














