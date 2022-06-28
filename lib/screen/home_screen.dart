import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marah1/screen/category_screen.dart';
import 'package:marah1/screen/profile_screen.dart';
import 'package:marah1/screen/search_screen.dart';
import 'package:marah1/screen/t.dart';
import 'package:marah1/util/responsive.dart';
import 'package:marah1/widget/Custom_botton.dart';
import 'package:marah1/widget/Custom_tabbar2.dart';
import 'package:marah1/widget/custom_tabbarview.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      
     
        child: Scaffold(
          appBar: AppBar(
          actions: [IconButton(onPressed: (){
            Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Search()),
                      );
          }, icon: Icon(Icons.search,size: 27,color: Colors.black,))],
          backgroundColor: Colors.white,elevation: 0,
          bottom: TabBar(
            indicatorColor: Colors.amber,
            tabs: [
          Tab(  child: Text("Weakly Featured",style: TextStyle(color: Colors.black,fontSize: 18),),),
          Tab(child: Text("Best of June",style: TextStyle(color: Color.fromARGB(118, 0, 0, 0),fontSize: 13),),),
          Tab(child: Text("Best of 2018",style: TextStyle(color:  Color.fromARGB(118, 0, 0, 0),fontSize: 13),),),
            ],
            ),
          ),

          body: ResponsiveLayout(
           Mobile: MobileContant(),
           tab: TabContant(),
           ),

        ),
    
    );
      
  }
}


class MobileContant extends StatelessWidget {
  const MobileContant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
        
         Container(child: SingleChildScrollView(
           child: Column(children:<Widget> [
           Container(
           child:CarouselSlider(
              items: [
               tab(image: "assets/headphone1.png",),
               tab(image: "assets/headphone2.png",),
               tab(image: "assets/headphone3.png",),
               
              ],
              options: CarouselOptions(
                 height: 290,
                 enlargeCenterPage: true,
                 aspectRatio: 16/9,
                 enableInfiniteScroll: true,
                 autoPlayCurve: Curves.slowMiddle,
                 viewportFraction: 0.8,
                 // onPageChanged: 
                 scrollDirection: Axis.horizontal,
              )
            ),),
           
                Container(
                  height: 100,
                  child:Column(children: [
                        Container(
                          child: DefaultTabController(
                length: 5,
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.amber,
                  tabs: [
                  Tab(child: Text("Trending",style: TextStyle(color: Color.fromARGB(118, 0, 0, 0),fontSize: 14),),),
                  Tab(child: Text("Sport",style: TextStyle(color:  Color.fromARGB(118, 0, 0, 0),fontSize: 14),),),
                   Tab(child: Text("Wireless",style: TextStyle(color:  Color.fromARGB(118, 0, 0, 0),fontSize: 14),),),
                    Tab(child: Text("Headset",style: TextStyle(color:  Color.fromARGB(118, 0, 0, 0),fontSize: 14),),),
                Tab(child: Text("Bags",style: TextStyle(color:  Color.fromARGB(118, 0, 0, 0),fontSize: 14),),),
                ]),
               
             ),
                        ),
                  ],) ,
                  ),

                  Container(child: Column(children: [
                   Container(
                    padding: EdgeInsets.all(10),
                    child: Row(children: [
                    Text("|",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.amber),),
                      Text("Recommended",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
                   ]),),
                  

                   Row(children: [
                    Container(
                      height: 300,
                      width: 160,
                      margin: EdgeInsets.all(10),
                     decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://i.pinimg.com/564x/0a/c0/21/0ac0210610be3aaa3eb256367023b9d9.jpg"),fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(25),
                      
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 160,
                      margin: EdgeInsets.all(10),
                     decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://i.pinimg.com/originals/f8/e5/9e/f8e59e7e352422f6fd2c4354ed990fc3.jpg"),fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(25),
                      
                      ),
                      
                    )
                    
                   ] ),
                    Row(children: [
                    Container(
                      height: 300,
                      width: 160,
                      margin: EdgeInsets.all(10),
                     decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://i.pinimg.com/564x/0a/c0/21/0ac0210610be3aaa3eb256367023b9d9.jpg"),fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(25),
                      
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 160,
                      margin: EdgeInsets.all(10),
                     decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://i.pinimg.com/originals/f8/e5/9e/f8e59e7e352422f6fd2c4354ed990fc3.jpg"),fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(25),
                      
                      ),
                      
                    )
                    
                   ] ),
                  ]),)
                 
             
                 ]),
         ),
               
              
               ),
         
      Container(color: Colors.amber,),
       Container(color: Color.fromARGB(255, 109, 228, 198),),
    ],

    );
  }
}




class TabContant extends StatelessWidget {
  const TabContant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}




  // Container(child: Column(
  //          children: [
            //  DefaultTabController(
            //     length: 5,
            //     child: TabBar(
            //       isScrollable: true,
            //       indicatorColor: Colors.amber,
            //       tabs: [
            //       Tab(child: Text("Trending",style: TextStyle(color: Color.fromARGB(118, 0, 0, 0),fontSize: 13),),),
            //       Tab(child: Text("Sport",style: TextStyle(color:  Color.fromARGB(118, 0, 0, 0),fontSize: 13),),),
            //        Tab(child: Text("Wireless",style: TextStyle(color:  Color.fromARGB(118, 0, 0, 0),fontSize: 13),),),
            //         Tab(child: Text("Headset",style: TextStyle(color:  Color.fromARGB(118, 0, 0, 0),fontSize: 13),),),
            //     Tab(child: Text("Bags",style: TextStyle(color:  Color.fromARGB(118, 0, 0, 0),fontSize: 13),),),
            //     ]),
               
           //  ),
    //            Container(
    //           width: 300,
    //           height: 100,
    //           child: TabBarView(children: [
    //    Container(
    // child:CarouselSlider(
    //    items: [
    //     tab2(text: "Shoes & Bags",image: "https://ae01.alicdn.com/kf/Hd36a985022af44f98328c63a04c93b500/2021-Lastest-Noble-and-Elegangt-Fashionable-Special-Style-Ladies-Shoes-and-Bag-Set-in-Green-Color.jpg_350x350q80.jpg.webp",),
    //     tab2(text: "Watches",image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/rolex-explorer-best-field-watches-refresh-su-1654536937.jpeg",),
    //     tab2(text: "Clothes",image: "https://static.onecms.io/wp-content/uploads/sites/34/2022/03/02/new-clothes-clothing-rack-getty-0222-2000.jpg",),
    //     tab2(text: "Headset",image: "https://nypost.com/wp-content/uploads/sites/2/2022/03/headphones-feature-image.png?w=1024",),
         
   
    //    ],
    //    options: CarouselOptions(
    //       height: 190,
    //       enlargeCenterPage: true,
    //       aspectRatio: 16/9,
    //       enableInfiniteScroll: true,
    //       autoPlayCurve: Curves.slowMiddle,
    //       viewportFraction: 0.8,
    //       // onPageChanged: 
    //       scrollDirection: Axis.horizontal,
    //    )
    //  ),),
    //   Container(color: Color.fromRGBO(201, 90, 90, 1),),
    //   Container(color: Color.fromARGB(255, 177, 98, 98),),
    //   Container(color: Color.fromARGB(255, 58, 42, 42),),
    //   Container(color: Color.fromARGB(255, 136, 103, 103),),
      
    //         ]),)
             
         