import 'package:flutter/material.dart';

void main() {
  debugPrint("print"); //hot restart
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("print widget");
    return MaterialApp(
      title: "My Counter App",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MyHomePage(),



    );
  }

}



class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("print");
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text("My Counter AppBar")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Butona Basılma Miktarı",style: TextStyle(fontSize: 24),),
          Text("0",style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold)),
      
        ],),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){debugPrint("button tıklandı");} ,child: Icon(Icons.add),),
      )
    );
  }
}