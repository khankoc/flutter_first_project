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
          color: Colors.red.shade300,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
            Icon(Icons.add_circle,size: 64, color : Colors.green),
            Icon(Icons.add_circle,size: 64, color : Colors.red),
            Icon(Icons.add_circle,size: 64, color : Colors.blue),
            Icon(Icons.add_circle,size: 64, color : Colors.orange),
            Icon(Icons.add_circle,size: 64, color : Colors.green),

          ],),
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