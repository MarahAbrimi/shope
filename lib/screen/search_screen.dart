import 'package:flutter/material.dart';
import 'package:marah1/util/responsive.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';
import 'package:lottie/lottie.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Search",style: TextStyle(color: Colors.black,fontSize: 20),),
        backgroundColor: Color.fromARGB(197, 233, 89, 6) ,
      //  elevation: 0,
        actions: [IconButton(  
         icon:( Icon(Icons.search,color: Color.fromARGB(144, 0, 0, 0),)),
         onPressed: (){
          showSearch(context: context, delegate: DataSearch());
         },)],
        ),
        body: Container(
          color: Color.fromARGB(255, 245, 173, 125),
          height: double.infinity,
          child: Lottie.network(
                'https://assets6.lottiefiles.com/packages/lf20_svuxrlnw.json'),),

                
    
       );
  }
}


class DataSearch extends SearchDelegate{
  List names =[
    "Clothes",
    "Headphone",
    "Electronic",
    "Clothes(T-shirt)",
    "Electronic(Laptop)",
     "Clothes",
    "Headphone",
    "Electronic",
    "Clothes(T-shirt)",
    "Electronic(Laptop)",
     "Clothes",
    "Headphone",
    "Electronic",
    "Clothes(T-shirt)",
    "Electronic(Laptop)"
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
 return[
IconButton(onPressed: (){
  query = "";
}, icon: Icon(Icons.close))
 ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
   return IconButton(onPressed: (){
    close(context, null);
   }, icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
         return Text("$query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
List filter=names.where((element) => element.contains(query)).toList();

  return Container(
    color: Color.fromARGB(255, 243, 178, 135),
    child: ListView.builder(
      itemCount: query==""? names.length:filter.length,
      itemBuilder: (context,i){
        return InkWell(
          onTap: (){
            query=filter[i];
            showResults(context);},
          child: Container(
            padding:EdgeInsets.all(10) ,
            child: query==""?Text("${names[i]}",style: TextStyle(fontSize: 20,),
            ):
            Text("${filter[i]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
            ),
        );

    }),
  );
  }
}