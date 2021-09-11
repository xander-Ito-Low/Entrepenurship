import 'package:flutter/material.dart';
import 'navBar.dart';
import 'dart:async';
StreamController<int> streamController = StreamController<int>();

//This class just houses the run method of the app.
//The navBar class will house your individual screens.
void main() {
  runApp(MyApp());
}

//Default skeleton that comes with every app
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(streamController.stream),
    );
  }
}