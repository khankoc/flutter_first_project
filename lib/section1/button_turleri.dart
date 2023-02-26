import 'package:flutter/material.dart';

class TemelButonlar extends StatefulWidget {
  const TemelButonlar({super.key});

  @override
  State<TemelButonlar> createState() => _TemelButonlarState();
}

class _TemelButonlarState extends State<TemelButonlar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        TextButton(
          onPressed: (){},
          onLongPress: (){
            debugPrint("Uzun Basıldı.");

          }, 
          child: Text("TextButton"
          )),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber)
            ), 
          icon: Icon(Icons.add),
          label: Text("Text Button With Icon"),
          ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            
            primary:  Colors.red,
            onPrimary: Colors.yellow,
            foregroundColor: Colors.blue,

          ),
          onPressed: () {}, 
          child: Text("Elevated Button"
          )),
        ElevatedButton.icon(
          icon: Icon(Icons.add),
          onPressed: () {}, 
          label: Text("Elevated Button"
          )),
        OutlinedButton(
          onPressed: () {}, 
          child: Text("Elevated Button"
          )),
        OutlinedButton.icon(
          onPressed: () {}, 
          label: Text("Elevated Button",),
          icon: Icon(Icons.add),
          )
        
      ],
      
    );
  }
}