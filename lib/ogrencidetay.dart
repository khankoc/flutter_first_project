import 'package:flutter/material.dart';

import 'ogrenci_listesi.dart';

class OgrenciDetay extends StatelessWidget {
  final Ogrenci secilenOgrenci;
  const OgrenciDetay({required this.secilenOgrenci,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Secilen Ogrenci"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${secilenOgrenci.isim}",style: TextStyle(fontSize: 25),),
            Text("${secilenOgrenci.soyisim}",style: TextStyle(fontSize: 25),),
            Text("Öğrenci ID : ${secilenOgrenci.id}",style: TextStyle(fontSize: 25),),

          ],
        ),
      ),
    );
  }
}