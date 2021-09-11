import 'package:flutter/material.dart';
import 'search.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  int _value = 1; // Default first value in the drop down

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Select Location',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Select Location"),
        ),
        body: Center(
            child: Column(children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 80.0),
                child: DropdownButton(
                    value: _value,
                    items: [
                      DropdownMenuItem(child: Text("Bath"), value: 1),
                      DropdownMenuItem(child: Text("Bristol"), value: 2),
                      DropdownMenuItem(child: Text("London"), value: 3),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    }),
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: TextButton(
                  child: Text('Next'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                    minimumSize: Size(200, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Search()),
                    );
                  },
                ),
              ),
            ])),
      ),
    );
  }
}