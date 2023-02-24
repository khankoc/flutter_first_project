import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {

  Container containerOlustur(String harf, Color renk){
      return Container(
        height: 50,               
        width: 35,
        color: renk,
        child: Text(harf,style: TextStyle(fontWeight: FontWeight.bold),),
        alignment:Alignment.center,);
  }

  Container margin_containerOlustur(String harf, Color renk){
      return Container(
        height: 50,               
        width: 35,
        color: renk,
        margin: EdgeInsets.only(top: 15),
        child: Text(harf,style: TextStyle(fontWeight: FontWeight.bold),),
        alignment:Alignment.center,);
  }

  String img = "https://cdn.arstechnica.net/wp-content/uploads/2022/11/dreamup_hero_1-800x450.jpg";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Flutter Dersleri"),
          ),
        backgroundColor: Colors.white,
        
        body: Container(
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(child: containerOlustur("D", Colors.orange.shade200)),
              Flexible(child: containerOlustur("A", Colors.orange.shade400)),
              Flexible(child: containerOlustur("R", Colors.orange.shade600)),
              Flexible(child: containerOlustur("T", Colors.orange.shade800))
             
          
             
                     
              ],
          ),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: [
              
              margin_containerOlustur("E", Colors.orange.shade200),
              margin_containerOlustur("R", Colors.orange.shade300),
              margin_containerOlustur("S", Colors.orange.shade400),
              margin_containerOlustur("L", Colors.orange.shade500),
              margin_containerOlustur("E", Colors.orange.shade600),
              margin_containerOlustur("R", Colors.orange.shade700),
              margin_containerOlustur("I", Colors.orange.shade800),
              ],

            )
            
            ],
          )

        ),


        
        

        floatingActionButton: FloatingActionButton
          (onPressed: () {
            debugPrint("Clicked");  
          } , 
          backgroundColor: Colors.black,
          child: Icon(Icons.add_a_photo)

          ),
        

      ),
    );
  }

  


}




class containerLessons extends StatelessWidget {
  const containerLessons({
    super.key,
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      padding: EdgeInsets.all(40),
      child: FlutterLogo(size: 120),
      decoration: BoxDecoration(
        
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(width: 3,color: Colors.black),
        //borderRadius: BorderRadius.circular(10)
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),topRight: Radius.circular(30)),
        image: DecorationImage(
          image: NetworkImage(img),fit: BoxFit.cover),
        boxShadow: [BoxShadow(color: Colors.grey,offset:Offset(10,20),blurRadius: 10),
                    BoxShadow(color: Colors.pink,offset:Offset(-10,-20),blurRadius: 20),]
        

      ),
    ),);
  }
}