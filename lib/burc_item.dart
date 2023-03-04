import 'package:flutter/material.dart';
import 'package:flutter_ilk_proje/burc_detay.dart';
import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, super.key});

  @override
  Widget build(BuildContext context) {

    var myTextStyle = Theme.of(context).textTheme;

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BurcDetay(secilenBurc: listelenenBurc)));
          },
          leading: Image.asset(
            listelenenBurc.burcKucukResim,
            width: 64,
            height: 64,
            
            ),
          title: Text(listelenenBurc.burcAdi,style: myTextStyle.headline6,),
          subtitle: Text(listelenenBurc.burcTarihi,style: myTextStyle.subtitle2,),
          trailing: Icon(Icons.arrow_forward_ios,color: Colors.blue,),
        ),
      ),
    );
  }
}