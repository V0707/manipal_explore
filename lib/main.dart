import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:manipal_explore/ABList.dart';
//import 'info.dart';
//import 'picture.dart';
import 'ABScreen.dart';
import 'BeachScreen.dart';
import 'RecreationScreen.dart';
//14th sep
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
  //static List<Widget> myPages = <Widget>[RecreationScreen(), ABScreen(), BeachesScreen()];

  //int _selectedIndex = 0;

  /*void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manipal Explorer',style: TextStyle(color: Colors.white, fontSize: 20),),
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,color: Colors.white,),
            onPressed: (){
              //Search();
            },
          ),
        ],

      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 90,
              color: Colors.grey.shade800,
              child: DrawerHeader(
                child: Text('places', style: TextStyle(color: Colors.white, fontSize:25),),
              ),
            ),
            //Divider(thickness: 1.0,),
            ListTile(
                leading: Icon(Icons.school),
                title: Text('Academic buildings',style: TextStyle(fontSize: 18,)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ABScreen()),);
              },
            ),
            ListTile(
              leading: Icon(Icons.games),
              title: Text('Recreation',style: TextStyle(fontSize: 18),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RecreationScreen()),);
              },
            ),
            ListTile(
              leading: Icon(Icons.beach_access),
              title: Text('Beaches',style: TextStyle(fontSize: 18),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BeachesScreen()),);
              },
            ),
            ListTile(
              leading: Icon(Icons.restaurant),
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
                image: AssetImage('images/MIT_1.jpeg'),
              ),
            ),
            Text('MANIPAL INSTITUTE OF TECHNOLOGY', style: TextStyle(fontSize: 25,fontFamily: 'Caveat'),),
            //Lists(context),
          ],
        ),
      ),

      /*bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.games,
            ),
            title: Text('Recreation'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
            ),
            title: Text('On Campus'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.beach_access,
            ),
            title: Text('Beaches'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped
      ),*/
    );
  }
}

//info i=info('6-7km','nedibdewubi');







