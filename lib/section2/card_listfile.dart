import 'package:flutter/material.dart';

class CartListKullanimi extends StatelessWidget {

  
  const CartListKullanimi({super.key});
  

  @override
  Widget build(BuildContext context) {
    String personalImageUrl = "https://media.licdn.com/dms/image/D4D03AQEU9NYNY2n0sA/profile-displayphoto-shrink_800_800/0/1663918224599?e=1682553600&v=beta&t=FhzQMf9LaEHd80TXY-DOr8Cg8DXK8RlklPGid7jqQjM";
    return Scaffold(
      appBar: AppBar(
        title: Text("Card List File"),),
        body: Center(
          child: ListView(
            children: [Column(
              children: [
                Expanded(child: tekListeElemani(personalImageUrl)),
                Expanded(child: tekListeElemani(personalImageUrl)),
                Expanded(child: tekListeElemani(personalImageUrl)),
                Expanded(child: tekListeElemani(personalImageUrl)),
                Expanded(child: tekListeElemani(personalImageUrl)),
                Expanded(child: tekListeElemani(personalImageUrl)),
                Expanded(child: tekListeElemani(personalImageUrl)),
                
          
              ]
            ),]
          ),
        ),
    );
  }

  Column tekListeElemani(String personalImageUrl) {
    return Column(
          children: [
            Card(
              color: Colors.amber.shade100,
              shadowColor: Colors.black,
              elevation: 12,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: CircleAvatar(
                            

                            backgroundImage: NetworkImage(personalImageUrl), //or AssetImage
                          ),
                title: Text("Başlık"),
                subtitle: Text("Alt Başlık"),
                trailing: Icon(Icons.real_estate_agent),
              )
            ),
            Divider(color: Colors.red,
                    thickness: 1,
                    height: 10,
                    indent: 20,
                    endIndent: 60,
            )
          ],
        );
  }
}