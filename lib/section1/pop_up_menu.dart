import 'package:flutter/material.dart';

class PopUpMenuKullanici extends StatefulWidget {
  const PopUpMenuKullanici({super.key});

  @override
  State<PopUpMenuKullanici> createState() => _PopUpMenuKullaniciState();
}

class _PopUpMenuKullaniciState extends State<PopUpMenuKullanici> {
  String secilenSehir = "";
  List<String> renkler = ["Mavi","Kırmızı","Sarı"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
        
        onSelected: (String sehir) {
          print("Secilen sehir  $sehir");
          setState(() {
            secilenSehir = sehir;
          });
        },
        itemBuilder: (BuildContext contex){ 
          return renkler.map((String renk) => PopupMenuItem(child: Text(renk),value: renk,)).toList();
          
          
          
          /*<PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text("Ankara"),
              value: "Ankara",),
            PopupMenuItem(
              child: Text("İstanbul"),
              value: "istanbul",),
            PopupMenuItem(
              child: Text("İzmir"),
              value: "izmir",),
          ];*/
        }
      ),
    );
  }
}