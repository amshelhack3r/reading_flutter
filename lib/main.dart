import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:reading/Home.dart';

void main(){
  //  Ensure that the app is always in potrait mode
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(eureka());
}

class eureka extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "READING",
      theme: ThemeData(primaryColor: Colors.blue),
      home: Home(),
    );
  }
}