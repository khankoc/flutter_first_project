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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Hello")
          ),
        body: Container(

          color: Colors.red,
          height: 100,
          width: 100,
          child: Container(color: Colors.green, height: 50, width: 50, child: Text("+"),alignment: Alignment.center,),
          alignment: Alignment.center,
          margin: EdgeInsets.all(50),
          

        ),


        
        

        floatingActionButton: FloatingActionButton
          (onPressed: () {
            debugPrint("Clicked");  
          } , 
          backgroundColor: Colors.black,
          child: Icon(Icons.add_a_photo)

          ),
        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        
        selectedItemColor: Colors.amber[800],

      ),

      ),
    );
  }
}