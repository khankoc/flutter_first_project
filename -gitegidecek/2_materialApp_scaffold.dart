import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Hello")
          ),
        body: Text("Hello World",style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.w700),),
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