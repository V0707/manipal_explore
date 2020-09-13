import 'picture.dart';
import 'package:flutter/material.dart';

class RecreationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text('Recreation',style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: 'Caveat'),),
        centerTitle: true,
      ),
      body:Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            picture(imageName: 'Student Plaza.jpg', text:'STUDENT PLAZA',
            distance: 'on campus',
            info: 'At the centre of the campus, this palza is a lot of socializing happens.'
            ),
            picture(imageName: 'TC_1.jpeg', text:'TIGER CIRCLE',
            distance: 'a good walk',
            info: 'From the Radha Medicals to Bharat Cinemas and Unlimited, you will everything you need here'),
            picture(
                imageName: 'End point.jpg', text:'END POINT',
                distance: 'a good walk',
            info:'End point is a cool place away from the hustle of the town. A walk of 4 kms on a well paved road takes you through greenery to a point which has sitting arrangement the Manipal lake can be viewed from there. It offers great viewing for nature lovers.'),
            picture(
              imageName: 'Arbi falls.jpg', text: 'ARBI FALLS',
              distance: '5km',
              info: 'Bandaje falls, also known as Bandaje Arbi falls is a waterfall located in the Charmadi ghat section of the Western Ghats in the Belthangady taluk of Dakshina Kannada district, Karnataka. The waterfalls can be reached only by undertaking trekking in thick forests and grass lands with the help of local guides and in summer the waterfalls goes dry. The height of waterfalls is about 200 feet.'
            )
          ],
        ),
      ),
    );
  }
}