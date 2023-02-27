import 'package:flutter/material.dart';
import 'package:flutter_ilk_proje/section1/button_turleri.dart';
import 'package:flutter_ilk_proje/section1/dropdown_button.dart';
import 'package:flutter_ilk_proje/section1/image_widgets.dart';
import 'package:flutter_ilk_proje/section1/my_counter_page.dart';
import 'package:flutter_ilk_proje/section1/pop_up_menu.dart';
import 'package:flutter_ilk_proje/section2/card_listfile.dart';
import 'package:flutter_ilk_proje/section2/easyloadingfile.dart';
import 'package:flutter_ilk_proje/section2/listview_kullanimi.dart';
import 'package:flutter_ilk_proje/section2/listviewperformans.dart';
import 'package:flutter_ilk_proje/section2/listview_layout_problemleri.dart';
import 'package:flutter_ilk_proje/section3/1_gridviewkullanimi_ve_boxdecoration.dart';
import 'package:flutter_ilk_proje/section3/2_gridview_with_gesture_detector.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';



void main(){
  runApp(const MyApp());
  configLoading();
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        floatingActionButton: BackButton(),
        appBar: AppBar(
          
          title: Text("Grid View Örnek"),
          actions: [PopUpMenuKullanici()],
          
        ),
        body: GridViewGestureDetector(),
      ),
      builder: EasyLoading.init(), //we must add it for EasyLoading.
    );
  }
}

