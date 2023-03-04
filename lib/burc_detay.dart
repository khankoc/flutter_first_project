import 'package:flutter/material.dart';
import 'model/burc.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc; 
  const BurcDetay({required this.secilenBurc ,super.key});
  
  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      reverse: false,
      
      slivers: [
        SliverAppBar(
          expandedHeight: 300,
          centerTitle: true,
          backgroundColor : Colors.purple,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(secilenBurc.burcAdi),
            background: Image.asset(
              secilenBurc.burcBuyukResim,
              fit: BoxFit.cover,
              ),
          ),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            
            child: Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: Text(secilenBurc.burcDetayi,style: Theme.of(context).textTheme.bodyText2,)),
          ),
          
        ),

        
      ],
    );
  }
}