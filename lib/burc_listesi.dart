import 'package:flutter/material.dart';
import 'package:flutter_ilk_proje/burc_item.dart';
import 'model/burc.dart';
import 'data/strings.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcListesi(){
    tumBurclar= verikaynaginihazirla();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Listesi"),
      ),
      body: Center(
        child: ListView.builder(itemCount: tumBurclar.length , itemBuilder: (context, index) {
          
          
          return BurcItem(listelenenBurc: tumBurclar[index]);
        


          },
        )
      ),
    );
  }
  
  List<Burc> verikaynaginihazirla() {
    List<Burc> gecici = [];
    for (var i = 0; i < 12; i++) {
      
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetayi = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcKucukResim = "assets/images/"+burcAdi.toLowerCase()+".png";
      var burcBuyukResim = "assets/images/burclar.jpg";
      
      Burc geciciburc = Burc(burcAdi, burcTarihi, burcDetayi, burcKucukResim, burcBuyukResim);

      gecici.add(geciciburc);
      
    }
    return gecici;
  }
}