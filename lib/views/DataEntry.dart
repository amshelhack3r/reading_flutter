import 'package:flutter/material.dart';

class DataEntry extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return EntryPage();
  }
}

class EntryPage extends StatefulWidget{

  @override
  State createState()  => PageState();
}

class PageState extends State<EntryPage>{

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("Name"),
                Text("Code"),
                Text("previous")
              ],
            ),
          )
        ],
      ),
    );
  }
}