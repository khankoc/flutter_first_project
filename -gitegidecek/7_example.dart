import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {

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
              Container(height: 50,
                        
                        width: 35,
                        color: Colors.orange.shade300,
                        child: Text("D",style: TextStyle(fontWeight: FontWeight.bold),),
                        alignment:Alignment.center,),
              Container(height: 50,
                        width: 35,
                        color: Colors.orange.shade500,
                        child: Text("A",style: TextStyle(fontWeight: FontWeight.bold),),
                        alignment:Alignment.center,),
              Container(height: 50,
                        width: 35,
                        color: Colors.orange.shade700,
                        child: Text("R",style: TextStyle(fontWeight: FontWeight.bold),),
                        alignment:Alignment.center,),          
              Container(height: 50,
                        width: 35,
                        color: Colors.orange.shade900,
                        child: Text("T",style: TextStyle(fontWeight: FontWeight.bold),),
                        alignment:Alignment.center,),          
                        
              ],
          ),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
              
              Container(height: 50,
                        width: 35,
                        margin: EdgeInsets.only(top: 15),
                        color: Colors.orange.shade500,
                        child: Text("E",style: TextStyle(fontWeight: FontWeight.bold),),
                        alignment:Alignment.center,),
              Container(height: 50,
                        width: 35,
                        margin: EdgeInsets.only(top: 15),
                        color: Colors.orange.shade700,
                        child: Text("R",style: TextStyle(fontWeight: FontWeight.bold),),
                        alignment:Alignment.center,),          
              Container(height: 50,
                        width: 35,
                        margin: EdgeInsets.only(top: 15),
                        color: Colors.orange.shade900,
                        child: Text("S",style: TextStyle(fontWeight: FontWeight.bold),),
                        alignment:Alignment.center,),          
              Container(height: 50,
                        width: 35,
                        margin: EdgeInsets.only(top: 15),
                        color: Colors.orange.shade300,
                        child: Text("L",style: TextStyle(fontWeight: FontWeight.bold),),
                        alignment:Alignment.center,),
              Container(height: 50,
                        width: 35,
                        margin: EdgeInsets.only(top: 15),
                        color: Colors.orange.shade300,
                        child: Text("E",style: TextStyle(fontWeight: FontWeight.bold),),
                        alignment:Alignment.center,),
              Container(height: 50,
                        width: 35,
                        margin: EdgeInsets.only(top: 15),
                        color: Colors.orange.shade300,
                        child: Text("R",style: TextStyle(fontWeight: FontWeight.bold),),
                        alignment:Alignment.center,),
              Container(height: 50,
                        width: 35,
                        margin: EdgeInsets.only(top: 15),
                        color: Colors.orange.shade300,
                        child: Text("I",style: TextStyle(fontWeight: FontWeight.bold),),
                        alignment:Alignment.center,),          
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