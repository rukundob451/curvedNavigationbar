import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: myHomePage(),
    );
  }

}

class myHomePage extends StatefulWidget {

  @override
  _myHomePageState createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text("Flutter App", style: TextStyle(
            color: Colors.black
          ),),
        ),
      ),
      body: Container(
        color: Colors.deepOrange,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is just a demo app',
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.deepOrange,
        buttonBackgroundColor: Colors.white,
        height: 50,
        items: <Widget>[
          Icon(Icons.verified_user, size: 20.0, color: Colors.black),
          Icon(Icons.add, size: 20.0, color: Colors.black),
          Icon(Icons.list, size: 20.0, color: Colors.black),
          Icon(Icons.favorite, size: 20.0, color: Colors.black),
          Icon(Icons.exit_to_app, size: 20.0, color: Colors.black),
        ],
        animationDuration: Duration(
          milliseconds: 200
        ),
        index: 2,
        animationCurve: Curves.bounceInOut,
        onTap: (index){
          debugPrint("Current Index is $index");
        },
      ),
    );
  }
}
