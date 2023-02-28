import 'package:flutter/material.dart';
import 'dart:math' as math;

class OgrenciListesi extends StatelessWidget {
  const OgrenciListesi({super.key});

  @override
  Widget build(BuildContext context) {

    int elemanSayisi = ModalRoute.of(context)!.settings.arguments as int;
    List<Ogrenci> tumOgrenciler = List.generate(elemanSayisi, (index)=> Ogrenci(index+1,"ADI: ${index+1}", "SOYADI : ${index+1}")); 

    debugPrint("Eleman Sayısı $elemanSayisi"); //verilen değer burda alınıyor...
    return Scaffold(
      appBar: AppBar(
        title: Text("Ogrenci Listesi"),
      ),
      body: ListView.builder(itemCount: tumOgrenciler.length , itemBuilder: (context,index){
        return ListTile(
          onTap: (){
            var secilen = tumOgrenciler[index];
            Navigator.pushNamed(context, "/ogrenciDetay",arguments: secilen);
          },
          leading: CircleAvatar(
            child: Text(tumOgrenciler[index].id.toString()),
          ),
          title: Text(tumOgrenciler[index].isim),
          subtitle: Text(tumOgrenciler[index].soyisim),
        );
      }),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id,this.isim,this.soyisim);
}

Color createRandomColor() {
    return Color.fromARGB(
      math.Random().nextInt(255),
      math.Random().nextInt(255),
      math.Random().nextInt(255),
      math.Random().nextInt(255));
}