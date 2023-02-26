import 'package:flutter/material.dart';


class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({super.key});

  List<Ogrenci> tumOgrenciler = List.generate(
    500,
    (index) => Ogrenci(
      index+1,"Ogrenci Adı ${index+1}", "Ogrenci Soyadi ${index+1}"),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Öğrenci Listesi"),),
      body: ListView(
        children: tumOgrenciler.map((Ogrenci ogr) => ListTile(
          title:  Text(ogr.name),
          subtitle: Text(ogr.surname),
          leading: CircleAvatar(child: Text(ogr.id.toString()),
          ),
        ),).toList()
      ),
    );
  }
}

class Ogrenci {
  final int id;
  final String name;
  final String surname;

  Ogrenci(this.id,this.name,this.surname);
}