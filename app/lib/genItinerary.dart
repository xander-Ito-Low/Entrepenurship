import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'flutter-xlider.dart';
import 'package:flutter/cupertino.dart';

class GenItinerary extends StatefulWidget {
  @override
  _GenItineraryState createState() => _GenItineraryState();
}

class _GenItineraryState extends State<GenItinerary> {
  // Slider default values
  double _budgetMin = 0;
  double _budgetMax = 30;
  double _ratingMin = 3;
  // If false, food selected, records user's final selection

  Color btnSelected = Colors.blue;
  Color btnDeselected = Colors.grey.shade600;
  DateTime _dateTime;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generate New Itinerary',
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("Generate New Itinerary"),
            backgroundColor: Colors.indigo,
            // Back button
            automaticallyImplyLeading: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
            )),
        body: Center(
            child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 40.0),
            child: Text(
              "Total Budget",
              style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Open Sans',
                  fontSize: 24),
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: FlutterSlider(
                values: [_budgetMin, _budgetMax],
                rangeSlider: true,
                max: 200,
                min: 0,
                step: FlutterSliderStep(),
                jump: true,
                onDragging: (handlerIndex, lowerValue, upperValue) {
                  _budgetMin = lowerValue;
                  _budgetMax = upperValue;
                  setState(() {});
                },
              )),
          Text('£' + _budgetMin.toString() + " to £" + _budgetMax.toString()),
          Container(
            padding: EdgeInsets.only(top: 40.0),
            child: Text(
              "Minimum Rating",
              style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Open Sans',
                  fontSize: 24),
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: FlutterSlider(
                values: [_ratingMin],
                max: 5,
                min: 0,
                step: FlutterSliderStep(),
                jump: true,
                onDragging: (handlerIndex, lowerValue, upperValue) {
                  _ratingMin = lowerValue;
                  // _ratingMax = upperValue;
                  setState(() {});
                },
              )),
          Text(_ratingMin.toString() + " star and over"),
          Container(
              padding: EdgeInsets.only(top: 60.0),
              child: RaisedButton(
                child: Text("Select a date"),
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2025),
                    initialDatePickerMode: DatePickerMode.year,
                  ).then((date) {
                    setState(() {
                      _dateTime = date;
                    });
                  });
                },
              )),
          Container(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                  _dateTime == null
                      ? 'No date selected'
                      : DateFormat('dd/MM/yyyy').format(_dateTime),
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Open Sans',
                      fontSize: 18))),
          Container(
            margin: EdgeInsets.only(top: 55),
            child: TextButton(
              child: Text('Generate Itinerary'),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.green,
                minimumSize: Size(200, 50),
              ),
              onPressed: () {},
            ),
          ),
        ])),
      ),
    );
  }
}
