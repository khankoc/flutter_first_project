import 'package:flutter/material.dart';
import 'package:flutter_ilk_proje/section1/pop_up_menu.dart';
import 'package:flutter_ilk_proje/section3/3_customscrollview_sliverappbarkullanimi.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
          actions: [PopUpMenuKullanici()],
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: CustomScrollViewKullanimi(),
        ),
      ),
    );
  }
}

