import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});
  

  @override
  Widget build(BuildContext context) {
    String imgUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe0mEUHmPTlGUw0az0DYK2lrsmUSW0GJFr2Ch34XoYp51bFx-_gz0Xl0jpFgK53AJknLo&usqp=CAU";
    String personalImageUrl = "https://media.licdn.com/dms/image/D4D03AQEU9NYNY2n0sA/profile-displayphoto-shrink_800_800/0/1663918224599?e=1682553600&v=beta&t=FhzQMf9LaEHd80TXY-DOr8Cg8DXK8RlklPGid7jqQjM";
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
          child: Row(children: [
            
            Expanded(
              child: Container(
                        child: CircleAvatar(
                          
                          radius: 75,
                          backgroundImage: NetworkImage(personalImageUrl), //or AssetImage
                        ),
                      
                      ),
            ),
            Expanded(
              child: Container(
                        width: 150,
                        height: 150,
                        child: Image.network(imgUrl,fit: BoxFit.cover,),
                        
                         
                      ),
            ),
            Expanded(
              child: Container(
                        width: 150,
                        height: 150,
                        child: Image.asset("assets/images/car.jpg",
                                          fit: BoxFit.cover,),
                        
                        
                      ),
            ),
        
        
          
          ]),
        ),
        FadeInImage.assetNetwork(placeholder: 'assets/images/loading.gif', image: "https://picsum.photos/250?image=",),
        ],
      ),
    );
  }
}