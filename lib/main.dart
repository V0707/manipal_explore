import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(new Manipal());

class Manipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Manipal Explorer',
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manipal Explorer',style: TextStyle(color: Colors.white, fontSize: 20),),
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,color: Colors.white,),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 90,
              color: Colors.blue.shade800,
              child: DrawerHeader(
                child: Text('places', style: TextStyle(color: Colors.white, fontSize:25),),
              ),
            ),
            //Divider(thickness: 1.0,),
            ListTile(
                leading: Icon(Icons.business, color: Colors.blue,),
                title: Text('Academic buildings',style: TextStyle(fontSize: 18,)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ABScreen()),);
              },
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Recreation',style: TextStyle(fontSize: 18),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RecreationScreen()),);
              },
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text('Beaches',style: TextStyle(fontSize: 18),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BeachesScreen()),);
              },
            ),
            ListTile(
              leading: Icon(Icons.forum),
              title: Text('Food courts',style: TextStyle(fontSize: 18),),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image(
                image: AssetImage('images/MIT.jpeg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget picture({String imageName, String text}){
  return ListTile(
    title:  Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('images/$imageName.jpg'),
              ),
              Text('$text', style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
  );
}

class BeachesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade700,
        title: Text('Beaches',style: TextStyle(fontSize: 30,color: Colors.white,),),
        centerTitle: true,
      ),
      body:Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: <Widget>[
               picture(imageName: 'Kaup_beach', text:'KAUP BEACH'),
              picture(imageName: 'Malpe beach', text:'MALPE BEACH'),
              picture(imageName: 'Mattu beach', text:'MATTU BEACH'),
              picture(imageName: 'Hoode_Beach', text:'HOODE BEACH'),
            ],
          )
        ),
      ),
    );
  }
}

class RecreationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade700,
        title: Text('Recreation',style: TextStyle(fontSize: 30,color: Colors.white,),),
        centerTitle: true,
      ),
      body:Container(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: <Widget>[
                picture(imageName: 'Student Plaza', text:'STUDENT PLAZA'),
                picture(imageName: 'TC', text:'TIGER CIRCLE'),
                picture(imageName: 'End point', text:'END POINT'),
              ],
            ),
        ),
      ),
    );
  }
}

class ABScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade700,
        title: Text('Beaches',style: TextStyle(fontSize: 30,color: Colors.white,),),
        centerTitle: true,
      ),
      body:Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: <Widget>[
              //picture(imageName: 'AB2', text:'ACADEMIC BLOCK-2'),
              picture(imageName: 'AB-5', text:'ACADEMIC BLOCK 5'),
              //picture(imageName: 'NLHRoad', text:'END POINT'),
            ],
          ),
        ),
      ),
    );
  }
}