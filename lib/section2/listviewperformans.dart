import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_ilk_proje/section2/easyloadingfile.dart';







class ListViewPerformans extends StatelessWidget {
  ListViewPerformans({super.key});

  List<Ogrenci> tumOgrenciler = List.generate(
    100,(index) => Ogrenci(index+1,"Ogrenci Adı ${index+1}", "Ogrenci Soyadi ${index+1}"),
      );

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ogrenci Listesi"),
      ),
      body: ListView.builder(
        reverse: false,
        itemBuilder: (BuildContext context, int index) {
        var length = tumOgrenciler.length-1;
        var indexOgrenci = tumOgrenciler[length-index];
        return Card(
          color: index%2 == 0 ? Colors.orange.shade100 : Colors.purple.shade100,
          child: ListTile(
            onTap: (){

              index%2 ==0 ?  EasyLoading.showSuccess("Success") : EasyLoading.showError("An Error");
             
              
            },
            onLongPress: () {
              _alertdialogIslemleri(context,indexOgrenci); //must be add context
            },
            title: Text(indexOgrenci.name),
            subtitle: Text(indexOgrenci.surname),
            leading: CircleAvatar(
              child: Text(indexOgrenci.id.toString(),
                          style: TextStyle(fontSize: 10),),
            ),
            
          ),
        );
      },
      
      ),
    );
  }
  
  void _alertdialogIslemleri(BuildContext myContex,Ogrenci secilen) {
    showDialog(context: myContex, 
            /* barrierDismissible: false ,*/
            builder: (context){
           return AlertDialog(
             title: Text("Uyarı"),
             content: SingleChildScrollView(
               child: ListBody(children: [
                 Text("Programda bir sorun oluştu. Lütfen daha sonra tekrar deneyin veya teknik destek ekibimize başvurun."),
               ],)
             ),
             actions: [TextButton(onPressed:() {debugPrint(secilen.name);}, child: Text("Tamam")),
                       TextButton(onPressed:() {Navigator.pop(context);}, child: Text("Kapat"))
        ],
      );
    });
  }
}


class Ogrenci {
  final int id;
  final String name;
  final String surname;

  Ogrenci(this.id,this.name,this.surname);
}