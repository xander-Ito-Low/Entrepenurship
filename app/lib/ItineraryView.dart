import 'package:flutter/material.dart';
import 'activity.dart';

class ItineraryView extends StatelessWidget {
  // const LocationResults({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        body: ItineraryViewWidget(),
        appBar: AppBar(
            centerTitle: true,
            title: Text("Explore Bath"),
            backgroundColor: Colors.indigo,
            // Back button
            automaticallyImplyLeading: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
            )),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class ItineraryViewWidget extends StatelessWidget {
  // const LocationResultsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding:
            const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, bottom: 15),
            child: Center(
              child: Text(
                "Trip to Bath 21/4/2021",
                style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Open Sans',
                    fontSize: 24),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                side: BorderSide(width: 5, color: Colors.grey[800])),
            shadowColor: Colors.blueAccent,
            elevation: 5,
            child: ClipPath(
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Container(
                  height: 160,
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.only(top: 10, left: 15),
                            child: Text(
                              "The Roman Baths",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Open Sans',
                                  fontSize: 26),
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              "7:30-9:30 (Visit for 2hrs)",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Open Sans',
                                  fontSize: 18),
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              "Entry £16-25",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Open Sans',
                                  fontSize: 18),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Row(children: <Widget>[
                            Expanded(
                                // padding: EdgeInsets.only(bottom: 10),
                                child: TextButton(
                              child: Text("More Info",
                                  style: TextStyle(fontSize: 16)),
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.green,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Activity()),
                                );
                              },
                            )),
                            Expanded(
                                // padding: EdgeInsets.only(bottom: 10),
                                child: TextButton(
                              child: Text("Save Location",
                                  style: TextStyle(fontSize: 16)),
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.blue,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () => {},
                            )),
                          ])),
                    ],
                  ))),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                side: BorderSide(width: 5, color: Colors.grey[800])),
            shadowColor: Colors.blueAccent,
            elevation: 5,
            child: ClipPath(
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Container(
                  height: 160,
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.only(top: 10, left: 15),
                            child: Text(
                              "The Jane Austin Centre",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Open Sans',
                                  fontSize: 26),
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              "9:40-11:00 (Visit for 1hr 20 min)",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Open Sans',
                                  fontSize: 18),
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              "Entry £12",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Open Sans',
                                  fontSize: 18),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Row(children: <Widget>[
                            Expanded(
                                // padding: EdgeInsets.only(bottom: 10),
                                child: TextButton(
                              child: Text("More Info",
                                  style: TextStyle(fontSize: 16)),
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.green,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () => {},
                            )),
                            Expanded(
                                // padding: EdgeInsets.only(bottom: 10),
                                child: TextButton(
                              child: Text("Save Location",
                                  style: TextStyle(fontSize: 16)),
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.blue,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () => {},
                            )),
                          ])),
                    ],
                  ))),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                side: BorderSide(width: 5, color: Colors.grey[800])),
            shadowColor: Colors.blueAccent,
            elevation: 5,
            child: ClipPath(
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Container(
                  height: 160,
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.only(top: 10, left: 15),
                            child: Text(
                              "Royal Cresent",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Open Sans',
                                  fontSize: 26),
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              "11:10-12:00 (Visit for 50 mins)",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Open Sans',
                                  fontSize: 18),
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              "Free entry",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Open Sans',
                                  fontSize: 18),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Row(children: <Widget>[
                            Expanded(
                                // padding: EdgeInsets.only(bottom: 10),
                                child: TextButton(
                              child: Text("More Info",
                                  style: TextStyle(fontSize: 16)),
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.green,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () => {},
                            )),
                            Expanded(
                                // padding: EdgeInsets.only(bottom: 10),
                                child: TextButton(
                              child: Text("Save Location",
                                  style: TextStyle(fontSize: 16)),
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.blue,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () => {},
                            )),
                          ])),
                    ],
                  ))),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                side: BorderSide(width: 5, color: Colors.grey[800])),
            shadowColor: Colors.blueAccent,
            elevation: 5,
            child: ClipPath(
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Container(
                  height: 160,
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.only(top: 10, left: 15),
                            child: Text(
                              "Five Guys",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Open Sans',
                                  fontSize: 26),
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              "12:20-13:20 (Eat for 1hr)",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Open Sans',
                                  fontSize: 18),
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              "Food £11.99",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Open Sans',
                                  fontSize: 18),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Row(children: <Widget>[
                            Expanded(
                                // padding: EdgeInsets.only(bottom: 10),
                                child: TextButton(
                              child: Text("More Info",
                                  style: TextStyle(fontSize: 16)),
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.green,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () => {},
                            )),
                            Expanded(
                                // padding: EdgeInsets.only(bottom: 10),
                                child: TextButton(
                              child: Text("Save Location",
                                  style: TextStyle(fontSize: 16)),
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.blue,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () => {},
                            )),
                          ])),
                    ],
                  ))),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                side: BorderSide(width: 5, color: Colors.grey[800])),
            shadowColor: Colors.blueAccent,
            elevation: 5,
            child: ClipPath(
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Container(
                  height: 160,
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.only(top: 10, left: 15),
                            child: Text(
                              "Break",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Open Sans',
                                  fontSize: 26),
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              "13:30-15:00 (Break for 1 hr 30 mins, feel free to explore)",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Open Sans',
                                  fontSize: 18),
                            ),
                          )),
                    ],
                  ))),
            ),
          ),
        ]);
  }
}
