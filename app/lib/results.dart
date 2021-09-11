import 'package:flutter/material.dart';
import 'activity.dart';

class SearchParams {
  final String location;
  final double budgetMin;
  final double budgetMax;
  final double ratingMin;
  final String activOrRest;

  SearchParams(this.location, this.budgetMin, this.budgetMax, this.ratingMin,
      this.activOrRest);
}

class Results extends StatelessWidget {
  final SearchParams params;
  Results({Key key, this.params}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        body: ResultsWidget(params: params),
        appBar: AppBar(
            centerTitle: true,
            title: Text("Results"),
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

class ResultsWidget extends StatelessWidget {
  final SearchParams params;
  ResultsWidget({Key key, this.params}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10, bottom: 15),
          child: Text(
            params.location +
                ", £" +
                params.budgetMin.toString() +
                " to £" +
                params.budgetMax.toString() +
                ", " +
                params.ratingMin.toString() +
                "+ star rating, " +
                params.activOrRest,
            style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.normal,
                fontFamily: 'Open Sans',
                fontSize: 24),
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
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () => {},
                          )),
                          Expanded(
                              // padding: EdgeInsets.only(bottom: 10),
                              child: TextButton(
                            child:
                                Text("Saved", style: TextStyle(fontSize: 16)),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.pink[400],
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
                            "4.1 stars",
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
                            "Royal Crescent",
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
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () => {},
                          )),
                          Expanded(
                              // padding: EdgeInsets.only(bottom: 10),
                              child: TextButton(
                            child:
                                Text("Saved", style: TextStyle(fontSize: 16)),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.pink[400],
                              minimumSize: Size(150, 50),
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
