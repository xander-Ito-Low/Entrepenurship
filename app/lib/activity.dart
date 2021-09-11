import 'package:flutter/material.dart';
import 'package:app/main.dart';

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Text("Activity"),
              backgroundColor: Colors.indigo,
              // Back button
              automaticallyImplyLeading: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context, false),
              )),
          body: Container(
              child: Center(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    "The Roman Baths",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Open Sans',
                        fontSize: 28),
                  )),
              Container(
                  padding: EdgeInsets.only(top: 20, left: 30),
                  child: Text(
                    "4.6 stars",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Open Sans',
                        fontSize: 20),
                  )),
              Container(
                  padding: EdgeInsets.only(top: 20, left: 30),
                  child: Text(
                    "Entry £16-25",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Open Sans',
                        fontSize: 20),
                  )),
              Container(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextButton(
                  child: Text('Save Location'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                    minimumSize: Size(200, 50),
                  ),
                    onPressed:(){
                      final snackBar = SnackBar(
                        content: Text('Travel destination saved!'),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            // Some code to undo the change.
                            
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextButton(
                  child: Text('View in Map'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                    minimumSize: Size(200, 50),
                  ),
                  onPressed: () {
                    streamController.add(1);
                  },
                ),
              ),
            ],
          )))),
    );
  }
}
