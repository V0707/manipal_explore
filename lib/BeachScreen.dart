import 'package:flutter/material.dart';
import 'picture.dart';

class BeachesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text('Beaches',style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: 'Caveat'),),
        centerTitle: true,
      ),
      body:Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            picture(
                imageName: 'Kaup_beach.jpg',
                text:'KAUP BEACH',
                distance: '15km',
                info: 'Kaup Beach The lighthouse at this beach is famous and is not very crowded. At a distance of 15 kilometres from Manipal, it is a very popular destination for the students of Manipal University to spend weekends. The light house, built by British in 1901, is located on the shores of Arabian Sea.'
            ),
            picture(
                imageName: 'Malpe beach.jpg',
                text:'MALPE BEACH',
                distance: '13.2km',
              info: 'Malpe beach is a busy beautiful beach. There are a lot of water sporting activities here. We can really enjoy the water activities. There are water rides such as jet ski, banana ride, '
                  'speed boat ride and much more. There are boat services from here to the St. Marys island',
            ),
            picture(
                imageName: 'Mattu beach.jpg',
                text:'MATTU BEACH',
                distance: '20.5km',
                info:'Yet another one of those offbeat beauties, this beach is relatively virgin and untouched by commercial tourism. It is still not very well known and hence is clean and naturally maintained. It is still mostly habitated with the locals and less tourists. As it is with all beaches it is beautiful to watch the sun rise and sun set.'
                    ' The landscape around the area is beautiful, so rest assured the camera will be happy and so will you.',
            ),
            picture(
                imageName: 'Hoode_Beach.jpg',
                text:'HOODE BEACH',
                distance: '16.4km',
                info: ' It is one of the most secluded beaches around Manipal. This beach is better enjoyed when visited in a 2 wheeler because it is a 4 km long stretch. The ride in this stretch is one of the most peaceful rides. You see coconut trees everywhere,'
                    ' the ocean on the left, the backwaters on the right, it is very peaceful. '
            ),
          ],
        ),
      ),
    );
  }
}