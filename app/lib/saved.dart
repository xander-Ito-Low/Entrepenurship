import 'package:flutter/material.dart';

class Saved extends StatelessWidget {
  // const LocationResults({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Saved Locations"),
          backgroundColor: Colors.indigo,
        ),
        body: SavedWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class SavedWidget extends StatelessWidget {
  // const LocationResultsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 20),
      children: <Widget>[
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
                            "Bath Abbey",
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
                            "4.6 stars",
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
                            "Free Entry",
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
                              minimumSize: Size(160, 40),
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
                              minimumSize: Size(160, 40),
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
                            "Botanical Gardens",
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
                            "4.6 stars",
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
                            "Free Entry",
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
                              minimumSize: Size(160, 40),
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
                              minimumSize: Size(160, 40),
                            ),
                            onPressed: () => {},
                          )),
                        ])),
                  ],
                ))),
          ),
        ),
      ],
    );
  }
}
