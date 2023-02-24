import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {

  String img = "https://cdn.arstechnica.net/wp-content/uploads/2022/11/dreamup_hero_1-800x450.jpg";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: Colors.pink),
      home: Scaffold(
        backgroundColor: Colors.white,
        
        body: Container(
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: flexiblecontainer,
          ),

        ),


        
        

        floatingActionButton: FloatingActionButton
          (onPressed: () {
            debugPrint("Clicked");  
          } , 
          backgroundColor: Colors.black,
          child: Icon(Icons.add_a_photo)

          ),
        

      ),
    );
  }

  List<Widget> get problemlicontainer { //expanded.
    return [Expanded(
            child: Container(
              width: 75,
              height: 75,
              color: Colors.yellow,
            ),),Expanded(
            child: Container(
              width: 75,
              height: 75,
              color: Colors.red,
            ),),Expanded(
            child: Container(
              width: 75,
              height: 75,
              color: Colors.blue,
            ),),Expanded(
            child: Container(
              width: 75,
              height: 75,
              color: Colors.green,
            ),),Expanded(
            child: Container(
              width: 75,
              height: 75,
              color: Colors.pink,
            ),),
          ];
  }
}

  List<Widget> get flexiblecontainer { //flexible.
    return [Flexible(
            child: Container(
              width: 75,
              height: 75,
              color: Colors.yellow,
            ),),Flexible(
            child: Container(
              width: 75,
              height: 75,
              color: Colors.red,
            ),),Flexible(
            child: Container(
              width: 75,
              height: 75,
              color: Colors.blue,
            ),),Flexible(
            child: Container(
              width: 75,
              height: 75,
              color: Colors.green,
            ),),Flexible(
            child: Container(
              width: 75,
              height: 75,
              color: Colors.pink,
            ),),
          ];
  }


class containerLessons extends StatelessWidget {
  const containerLessons({
    super.key,
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      padding: EdgeInsets.all(40),
      child: FlutterLogo(size: 120),
      decoration: BoxDecoration(
        
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(width: 3,color: Colors.black),
        //borderRadius: BorderRadius.circular(10)
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),topRight: Radius.circular(30)),
        image: DecorationImage(
          image: NetworkImage(img),fit: BoxFit.cover),
        boxShadow: [BoxShadow(color: Colors.grey,offset:Offset(10,20),blurRadius: 10),
                    BoxShadow(color: Colors.pink,offset:Offset(-10,-20),blurRadius: 20),]
        

      ),
    ),);
  }
}