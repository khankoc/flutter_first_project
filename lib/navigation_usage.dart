import 'dart:math';

import 'package:flutter/material.dart';



class RedPage extends StatefulWidget {
  const RedPage({super.key});

  @override
  State<RedPage> createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text("RedPAGE"),
        backgroundColor: Colors.red,
        automaticallyImplyLeading: true,
        ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("RedPage",style: TextStyle(fontSize: 25)),
            ElevatedButton(
              onPressed: (){

              int gelensayi = Random().nextInt(100);
              Navigator.of(context).pop();
              print("Üretilen sayı = ${gelensayi.toString()}");
              
              }, 
              
              child: Text("geri dön"))
          ]
        )
        
        
      ),
    );
  }
}

class YellowPage extends StatefulWidget {
  const YellowPage({super.key});

  @override
  State<YellowPage> createState() => _YellowPageState();
}

class _YellowPageState extends State<YellowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(title: Text("YellowPAGE"),backgroundColor: Colors.yellow,),
      body: Center(
        child: Text("YellowPage",style: TextStyle(fontSize: 25)),
        
      ),
    );
  }
}


class BluePage extends StatefulWidget {
  const BluePage({super.key});

  @override
  State<BluePage> createState() => _BluePageState();
}

class _BluePageState extends State<BluePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(title: Text("BluePAGE"),backgroundColor: Colors.blue,),
      body: Center(
        child: Text("BluePage",style: TextStyle(fontSize: 25)),
        
      ),
    );
  }
}


class PurplePage extends StatefulWidget {
  const PurplePage({super.key});

  @override
  State<PurplePage> createState() => _PurplePageState();
}

class _PurplePageState extends State<PurplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(title: Text("PurplePAGE"),backgroundColor: Colors.purple,),
      body: Center(
        child: Text("PurplePage",style: TextStyle(fontSize: 25)),
        
      ),
    );
  }
}

class OrangePage extends StatefulWidget {
  const OrangePage({super.key});

  @override
  State<OrangePage> createState() => _OrangePageState();
}

class _OrangePageState extends State<OrangePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(title: Text("OrangePAGE"),backgroundColor: Colors.orange,),
      body: Center(
        child: Text("OrangePage",style: TextStyle(fontSize: 25)),
        
      ),
    );
  }
}