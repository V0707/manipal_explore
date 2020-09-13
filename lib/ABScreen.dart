import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'picture.dart';

class ABScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text('Academic buildings',style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: 'Caveat'),),
        centerTitle: true,
      ),
      body:Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
              picture(
                imageName:'AB2.jpeg' ,
                text: 'AB 2',
                distance: 'On campus',
                info:'Also houses Manipal School of Architecture and Planning',
              ), //AB2
            picture(
                imageName: 'AB-5.jpg',
                text:'ACADEMIC BLOCK 5',
                distance: 'On campus',
                info: 'This is the Academic block 5, which has the E&I department etc.'),
            picture(
              imageName: 'NLHRoad.jpeg',
              text: 'NLH ROAD',
              distance: 'on Campus',
              info: 'Also known as New Lecture hall road, this is where you will find OM Xerox, and many other shops as well. Here you can satisfy your hunger pangs and also get documents and files xeroxed'
            )//NLH road
          ],
        ),
      ),
    );
  }
}