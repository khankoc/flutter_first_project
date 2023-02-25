import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
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
          Text("Butona Basılma Miktarı",style: TextStyle(fontSize: 24,),),
          Text("$_sayac",style: Theme.of(context).textTheme.headline1),
      
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