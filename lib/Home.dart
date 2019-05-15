import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:reading/views/DataEntry.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigation();
  }
}

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key key}) :super(key: key);
  @override
  State createState() => BottomNavState();


}

class BottomNavState extends State<BottomNavigation> {
  //index to show which slide you are on
  int _index = 0;

  //method to change the state when the user taps a button
  void _onTabTapped(int index) {
    setState(() {
      _index = index;
    });
  }
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[

    DataEntry(),

    Text(
      'Index 1: Map View',
      style: optionStyle,
    ),
    Text(
      'Index 2: Statistics',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("reading"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: _widgetOptions.elementAt(_index),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("home")),
          BottomNavigationBarItem(icon: Icon(Icons.map), title: Text("map")),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), title: Text("stat")),
        ],
        currentIndex: _index,
        onTap: _onTabTapped,
      ),
    );
  }


}

