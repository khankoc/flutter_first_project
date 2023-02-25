import 'package:flutter/material.dart';
import 'package:flutter_ilk_proje/button_turleri.dart';
import 'package:flutter_ilk_proje/image_widgets.dart';
import 'package:flutter_ilk_proje/my_counter_page.dart';

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
      theme: ThemeData(primarySwatch: Colors.teal,
                       textTheme: TextTheme(headline1: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                       ))),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Ornekleri"),
        ),
        body : TemelButonlar()
      ),
      



    );
  }

}

