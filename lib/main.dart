import 'package:flutter/material.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Navigation App"),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountEmail: new Text("thetechnowb@gmail.com"),
              accountName: new Text("Tarun Joshi"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text("T"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text("J"),
                ),
                new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text("P"),
                ),
              ],
            ),
            new ListTile(
              title: new Text("Home"),
              trailing: new Icon(Icons.home),
            ),
            new ListTile(
              title: new Text("Create Account"),
              trailing: new Icon(Icons.supervised_user_circle),
            ),
            new Divider(height: 5.0),
            new ListTile(
              title: new Text("Settings"),
              trailing: new Icon(Icons.settings),

            )
          ],
        ),
      ),
    );
  }
}

