import 'package:flutter/material.dart';
import 'package:flutter_ilk_proje/section1/pop_up_menu.dart';
import 'dart:math' as math;

class CustomScrollViewKullanimi extends StatelessWidget {
  const CustomScrollViewKullanimi({super.key});

  @override
  Widget build(BuildContext context) {

    Container newcontainer(int sayi,String newtext) {
      return Container(
        alignment: Alignment.center,
        child: Text(newtext,style: TextStyle(fontSize: 20,color: Colors.black),),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.green[sayi],
          
          
        ),
      );
    };


    var sliverChildListDelegate = SliverChildListDelegate(
            [
              newcontainer(100,"Sabit Liste Elemani 1"),
              newcontainer(200,"Sabit Liste Elemani 2"),
              newcontainer(300,"Sabit Liste Elemani 3"),
              newcontainer(400,"Sabit Liste Elemani 4"),
              newcontainer(500,"Sabit Liste Elemani 5"),
              newcontainer(600,"Sabit Liste Elemani 6"),
              newcontainer(700,"Sabit Liste Elemani 7"),
              newcontainer(800,"Sabit Liste Elemani 8"),
            ],
          );

    


    return CustomScrollView(
      scrollDirection: Axis.vertical,
      reverse: false,
      slivers: [
        SliverAppBar(

          leading: IconButton(icon: Icon(Icons.menu),color: Colors.white, onPressed: (){},),
          actions: [PopUpMenuKullanici()],
          //title: Text("Sliver App Bar"),
          backgroundColor: Colors.green.shade600,
          expandedHeight: 300, //yukarı kaydırılırken gözüken appbarın max yüksekliği
          floating: false, //yukarı kaydırılırken toolbarın tekrar gözükmesi için true olmalı !
          pinned: true, //toolbarın sürekli yukarıda gözükmesi için true! olmalı
          flexibleSpace: FlexibleSpaceBar(
            
            title: Text("Ana Menu"),
            background: Image.asset(
              "assets/images/car.jpg",
              fit: BoxFit.cover,
              ),
          ),
          
        ),
        SliverList(
          delegate: sliverChildListDelegate,
        ),

        SliverPadding(
          padding: EdgeInsets.all(30),
          sliver: SliverList(delegate: SliverChildBuilderDelegate(
            _dinamikelemanuretenfunction,childCount: 4
            ),)
          ),

        SliverList(
          delegate: SliverChildBuilderDelegate(
            _dinamikelemanuretenfunction, childCount: 8
          ),
        ),

        SliverFixedExtentList(delegate: sliverChildListDelegate, itemExtent: 100),
        //en performanslı yapı fixedextenlist (sliverlist'e göre)
  
        SliverFixedExtentList(delegate: SliverChildBuilderDelegate(_dinamikelemanuretenfunction,childCount: 10), itemExtent: 200),
        //builder'da en performanslı yapı ise budur.
      
        SliverGrid( //.count .extent 
          delegate: SliverChildBuilderDelegate(_dinamikgriduretenfunction,childCount: 6),
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) //bir satırda 2 eleman
          ),
      
      ],


    );
  }

  Widget _dinamikelemanuretenfunction(BuildContext context, int index) {
    return Container(
      height: 100,
      alignment: Alignment.center,
      child: Text(
        "Builder ile Sabit Liste Eleman ${index+1}",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18),
        ),
      decoration: BoxDecoration(
        color: createRandomColor(),
      ),
    );
  }


  Widget _dinamikgriduretenfunction(BuildContext context, int index) {
    return Container(
      height: 100,
      alignment: Alignment.center,
      child: Text(
        "Selis Builder ile Sabit Liste Eleman ${index+1}",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18),
        ),
      decoration: BoxDecoration(
        color: createRandomColor(),
      ),
    );
  }
  
  Color createRandomColor() {
    return Color.fromARGB(
      math.Random().nextInt(255),
      math.Random().nextInt(255),
      math.Random().nextInt(255),
      math.Random().nextInt(255));
  }
}