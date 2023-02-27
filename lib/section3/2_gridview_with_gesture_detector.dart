import "package:flutter/material.dart";

class GridViewGestureDetector extends StatelessWidget {
  const GridViewGestureDetector({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2),
    itemCount: 20,
    itemBuilder: (BuildContext context,int index) {
      return GestureDetector( //WRAP WITH GESTURE DETECTOR.
        
        onTap: (){debugPrint("Tıklandı : $index");},
        onDoubleTap: (){debugPrint("Çift Tıklandı: $index");},
        onLongPress: (){debugPrint("Uzun Tıklandı: $index");},
        onHorizontalDragStart: (e) => debugPrint("Sürüklendi: $e"),


        child: Container(


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
      
        ),
      );
    },);
  }
}