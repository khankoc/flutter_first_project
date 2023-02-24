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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("print");
    return Scaffold(
        appBar: AppBar(title: Text("My Counter AppBar")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Butona Basılma Miktarı",style: TextStyle(fontSize: 24),),
          Text("$_sayac",style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold)),
      
        ],),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){sayaciarttir();} ,child: Icon(Icons.add),),
      );
    
  }

  void sayaciarttir(){
    setState(() { //setstate cok önemli hot reload yapmanı sağlar !
      _sayac++;
    });
    
  }


}