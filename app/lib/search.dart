import 'package:flutter/material.dart';
import 'flutter-xlider.dart';
import 'results.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // Slider default values
  double _budgetMin = 0;
  double _budgetMax = 30;
  double _ratingMin = 3;
  String _activOrRest = "activities";

  Color btnSelected = Colors.blue;
  Color btnDeselected = Colors.grey.shade600;
  Color _activityBtnColour = Colors.blue; // Activity initially selected
  Color _restaurantBtnColour = Colors.grey.shade600;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Select Activity',
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("Search Activity"),
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
              "Budget Range",
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
            padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
            child: Text(
              "Activity Type",
              style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Open Sans',
                  fontSize: 24),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: TextButton(
                      child: Text('Activity'),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: _activityBtnColour,
                        minimumSize: Size(150, 40),
                      ),
                      onPressed: () {
                        _activOrRest = "activities";
                        setState(() {
                          if (_activityBtnColour == btnSelected) {
                            _activityBtnColour = btnDeselected;
                            _restaurantBtnColour = btnSelected;
                          } else {
                            _activityBtnColour = btnSelected;
                            _restaurantBtnColour = btnDeselected;
                          }
                        });
                      },
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: TextButton(
                        child: Text('Restaurant'),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: _restaurantBtnColour,
                          minimumSize: Size(150, 40),
                        ),
                        onPressed: () {
                          _activOrRest = "restaurants";
                          setState(() {
                            if (_restaurantBtnColour == btnSelected) {
                              _restaurantBtnColour = btnDeselected;
                              _activityBtnColour = btnSelected;
                            } else {
                              _restaurantBtnColour = btnSelected;
                              _activityBtnColour = btnDeselected;
                            }
                          });
                        },
                      ))
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: 55),
            child: TextButton(
              child: Text('Search'),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.green,
                minimumSize: Size(200, 50),
              ),
              onPressed: () {
                // TO UNCOMMENT WHEN RESULTS PAGE COMPLETE
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Results(
                          params: SearchParams("Bath", _budgetMin, _budgetMax,
                              _ratingMin, _activOrRest))),
                );
              },
            ),
          ),
        ])),
      ),
    );
  }
}
