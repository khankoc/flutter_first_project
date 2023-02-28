import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:flutter_ilk_proje/navigation_usage.dart';
import 'package:flutter_ilk_proje/ogrenci_listesi.dart';
import 'package:flutter_ilk_proje/ogrencidetay.dart';
import 'main.dart';




class RouteGenerator {

  static Route<dynamic>? _createRoute(Widget targetWidget,RouteSettings settings){

    if(defaultTargetPlatform==TargetPlatform.iOS){
        return CupertinoPageRoute(settings : settings,builder: (context) => targetWidget,);
      } else {
        return MaterialPageRoute(settings : settings,builder: (context) => targetWidget,);
      }

  }



  static Route<dynamic>? routeGenerator(RouteSettings settings){

    
    
    switch (settings.name) {

      case "/":
        return _createRoute(AnaSayfa(),settings);
      

      case "/orangePage":
        return _createRoute(OrangePage(),settings);

      case "/redPage":
        return _createRoute(RedPage(),settings);
      

      case "/bluePage":

        return _createRoute(BluePage(),settings);

      case "/yellowPage":

        return _createRoute(YellowPage(),settings);

      case "/purplePage":

        return _createRoute(PurplePage(),settings);

      case "/ogrenciListesi":

        return _createRoute(OgrenciListesi(),settings);

      case "/ogrenciDetay":
        var parametredekiOgrenci = settings.arguments as Ogrenci;
        return _createRoute(OgrenciDetay(secilenOgrenci: parametredekiOgrenci ), settings);

      default:
      
        return MaterialPageRoute(builder: (context) =>Scaffold(
        appBar: AppBar(title: Text("Error"),),
        body: Center(child: Text("404"),),

      




      ),

     );

    }

  }
}