import 'package:flutter/cupertino.dart';
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
import 'package:flutter_ilk_proje/section3/3_customscrollview_sliverappbarkullanimi.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_ilk_proje/section2/card_listfile.dart';
import 'package:flutter_ilk_proje/section4/navigation_usage.dart';
import 'package:flutter_ilk_proje/section4/ongenerateroute_kullanimi.dart';

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
      onGenerateRoute: RouteGenerator.routeGenerator,
      home: AnaSayfa(),
      builder: EasyLoading.init(), //we must add it for EasyLoading.
    );
  }
  
  ongenerateroutekullanimi() {}
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        debugPrint("Geri Gelmek istediğine emin misin ?");
        return Future.value(true); //req
      },
      child: Scaffold(

          bottomNavigationBar: BottomNavigationBar(
            items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          ],
            selectedItemColor: Colors.blue,
          
          ),
          appBar: AppBar(
            actions: [PopUpMenuKullanici()],
            title: Text("Navigation Kullanimi"),
            leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
          ),
          body: Center(
            child : Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                
                children: [
                  ElevatedButton(
                    
                    onPressed: () {
                      // FOR IOS => Navigator.push(context,CupertinoPageRoute(builder: ((context)=> RedPage())));
                      Navigator.pushNamed(context, "/redPage");
                    },
                    child: Text("Kırmızı Sayfaya Git"),
                    style: ElevatedButton.styleFrom(primary: Colors.red.shade800),),
                  
                  ElevatedButton(
                    onPressed: () {
                      // FOR IOS => Navigator.push(context,CupertinoPageRoute(builder: ((context)=> RedPage())));
                      Navigator.pushNamed(context, "/yellowPage");
                    },
                    child: Text("Sarı Sayfaya Git"),
                    style: ElevatedButton.styleFrom(primary: Colors.yellow.shade800),),
                  ElevatedButton(
                    onPressed: () {
                      // FOR IOS => Navigator.push(context,CupertinoPageRoute(builder: ((context)=> RedPage())));
                      Navigator.pushNamed(context, "/bluePage");
                      
                      
                    },
                    child: Text("Mavi Sayfaya Git"),
                    style: ElevatedButton.styleFrom(primary: Colors.blue.shade800),),
                  ElevatedButton(
                    onPressed: () {
                      // FOR IOS => Navigator.push(context,CupertinoPageRoute(builder: ((context)=> RedPage())));
                      Navigator.pushNamed(context, "/purplePage");
                      
                      
                    },
                    child: Text("Mor Sayfaya Git"),
                    style: ElevatedButton.styleFrom(primary: Colors.purple.shade800),),
                  ElevatedButton(
                    onPressed: () {
                      // FOR IOS => Navigator.push(context,CupertinoPageRoute(builder: ((context)=> RedPage())));
                      Navigator.pushNamed(context, "/orangePage");
                      
                      
                    },
                    child: Text("Turuncu Sayfaya Git"),
                    style: ElevatedButton.styleFrom(primary: Colors.orange.shade800),),
                  ElevatedButton(
                    onPressed: () {
                      // FOR IOS => Navigator.push(context,CupertinoPageRoute(builder: ((context)=> RedPage())));
                      Navigator.pushNamed(context, "/ogrenciListesi",arguments: 100000);
                      
                      
                    },
                    child: Text("Liste Oluştur."),
                    style: ElevatedButton.styleFrom(primary: Colors.orange.shade800),),
                
                ],
              )
          
              ),
          )
        ),
    );
  }
}


