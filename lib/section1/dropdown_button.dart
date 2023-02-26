import 'package:flutter/material.dart';

class DropDownButtonKullanici extends StatefulWidget {
  const DropDownButtonKullanici({super.key});

  @override
  State<DropDownButtonKullanici> createState() => _DropDownButtonKullaniciState();
}

class _DropDownButtonKullaniciState extends State<DropDownButtonKullanici> {
  String? _secilenSehir = "Ankara";
  List<String> _sehirler = ["Ankara","İstanbul","İzmir"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        hint: Text("Sehir seciniz"),
        icon: Icon(Icons.add),
        /*items: [
          DropdownMenuItem(child: Text("ankara sehri"),value: "ankara",),
          DropdownMenuItem(child: Text("istanbul sehri"),value: "istanbul",)
        
        ],*/

        items: _sehirler.map(
          (String sehir) => DropdownMenuItem(
            child: Text(sehir),value: sehir,)).toList(),

        value: _secilenSehir,
        onChanged: (String? secilen){
          setState(() {
            _secilenSehir = secilen;
          });
        },
      ),
    );
  }
}