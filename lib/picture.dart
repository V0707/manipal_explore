import 'package:flutter/material.dart';
//import 'package:manipal_explore/BeachScreen.dart';
import 'package:manipal_explore/Heart.dart';

Widget picture({String imageName, String text, String distance,String info, BuildContext context}){
  return Container(
      width: 400,
      child:  Card(
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              Image(
                image: AssetImage('images/$imageName'),
              ),
              ListTile(
                title: Center(child: Text('$text',style: TextStyle(fontSize: 25,fontFamily: 'Caveat'),)),
                trailing: Heart(),
              ),
              Divider(
                thickness: 2,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 2.0),
                child: Text('Distance: $distance', style: TextStyle(fontSize: 25,fontFamily: 'Caveat'),),
              ),
              Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('$info',style: TextStyle(fontSize: 25,fontFamily: 'Caveat'),),
                  ),
              ),
            ],
          ),
        ),
      ),
  );
}