//This is code for the navigaiton bar
import 'package:app/location.dart';
import 'package:flutter/material.dart';
import 'package:app/googlemaps.dart';
import 'package:app/itineraryList.dart';
import 'package:app/saved.dart';

//Stateful widget for the navbar becasue it needs to store the selected index
class Home extends StatefulWidget {
  Home(this.stream);
  final Stream<int> stream;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //the initial index for selected tab
  int currentIndex = 0;

  void mySetState(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    widget.stream.listen((index) {
      mySetState(index);
    });
  }

  //All tabs will be added here as references to the classes
  final tabs = [
    Location(),
    GoogleMapScreen(),
    ItineraryList(),
    Saved(),
  ];

  //This function builds the navigation bar consisting of all of the icons
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //The tab will be displayed here when the array index is called
      body: Stack(
        children: [
          _buildOffstageNavigator(0),
          _buildOffstageNavigator(1),
          _buildOffstageNavigator(2),
          _buildOffstageNavigator(3)
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
              backgroundColor: Colors.indigo),
          BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: "Map",
              backgroundColor: Colors.indigo),
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: "Itinerary",
              backgroundColor: Colors.indigo),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: "Saved activities",
              backgroundColor: Colors.indigo),
        ],

        //On tap will animate the selected icon
        onTap: (index) {
          mySetState(index);
        },
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          Location(),
          GoogleMapScreen(),
          ItineraryList(),
          Saved(),
        ].elementAt(index);
      },
    };
  }

  Widget _buildOffstageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: currentIndex != index,
      child: Navigator(
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name](context),
          );
        },
      ),
    );
  }
}
