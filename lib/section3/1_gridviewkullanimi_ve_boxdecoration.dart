import 'dart:convert';

import 'package:flutter/material.dart';






class GridViewOrnek extends StatelessWidget {
  const GridViewOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 100, //per element maximum 100pixel
      //crossAxisCount: 3, this is for .count.
      primary: false,
      reverse: false,
      //scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10), 
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        createContainer("Flutter1"),
        createContainer("Flutter2"),
        createContainer("Flutter3"),
        createContainer("Flutter4"),
        createContainer("Flutter5"),
        createContainer("Flutter6"),
        createContainer("Flutter7"),
        createContainer("Flutter8"),
        createContainer("Flutter9"),
        createContainer("Flutter10"),
        createContainer("Flutter"),
        createContainer("Flutter"),
        createContainer("Flutter"),
        createContainer("Flutter"),
        createContainer("Flutter"),
        createContainer("Flutter"),
        createContainer("Flutter"),
        createContainer("Flutter"),
        createContainer("Flutter"),
        
      ],

      );
  }


  Container createContainer(String name) {
    return Container(
        
        alignment: Alignment.center,
        color: Colors.teal.shade300,
        child: Text(name),
      );
  }
}

//this is the best usage, under below..
class GridView2Ornek extends StatelessWidget {
  const GridView2Ornek({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2),
    itemCount: 20,
    itemBuilder: (BuildContext context,int index) {
      return Container(
  
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          boxShadow: [new BoxShadow(color: Colors.black,offset: Offset(5, 10),blurRadius: 20),],
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black,width: 5,style: BorderStyle.solid),
          color: Colors.red[100*(index%9)],
          gradient: LinearGradient(
            colors: [ Colors.yellow, Colors.red],
            begin: Alignment.topCenter,end: Alignment.bottomCenter),
          image: DecorationImage(image: AssetImage("assets/images/car.jpg"),fit: BoxFit.cover)
          ),

        margin: EdgeInsets.all(10), //space between
        alignment: Alignment.center,
        child: Text("Merhaba Flutter $index",style: TextStyle(color: Colors.white,fontSize: 20),),

      );
    },);
  }
}