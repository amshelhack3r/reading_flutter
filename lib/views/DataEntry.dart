import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reading/Styles/styles.dart';

class DataEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EntryPage();
  }
}

class EntryPage extends StatefulWidget {
  @override
  State createState() => PageState();
}

class PageState extends State<EntryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          Card(
            child: Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10),),
                  Text("Samuel Njoroge Kanyi", style: styles.headingStyle,),
                  Padding(padding: EdgeInsets.only(top: 10, bottom: 10),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("kahuho"),
                      Text("gatiuguru/water tower"),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, bottom: 10),),
                  Text("Previous Values", style: styles.headingStyle,),
                  Padding(padding: EdgeInsets.only(top: 10, bottom: 10),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("1/1/2019"),
                      Text("350"),
                    ],

                  ),
                  Padding(padding: EdgeInsets.only(top: 10, bottom: 10),),
                  Text("Read By Elias "),
                  Padding(padding: EdgeInsets.only(bottom: 10),),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10, bottom: 10),),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              hintText: 'Client Code'
            ),

          ),

          Padding(padding: EdgeInsets.only(top: 10, bottom: 10),),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                hintText: 'Value',

            ),
          ),

          Padding(padding: EdgeInsets.only(top: 10, bottom: 10),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                color: Colors.blue,
                onPressed: (){},
                textColor: Colors.black,
                child: Text("Save"),
              ),

              MaterialButton(
                onPressed: (){},
                color: Colors.amber,
                textColor: Colors.black,
                child: Text("Clear"),
              )
            ],
          )
        ],
      ),
    );
  }
}
