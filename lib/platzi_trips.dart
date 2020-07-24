import 'package:flutter/material.dart';
import 'package:platzitrippsapp/profile_trips.dart';
import 'package:platzitrippsapp/search_trips.dart';
import 'home_trips.dart';

class PlatziTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips>{
  int indexTab = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];
  
  void onTapTapped(int index){
    setState(() {
      indexTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widgetsChildren[indexTab],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(255, 255, 255, 0.5),
            primaryColor: Colors.purple,
          ),
          child: BottomNavigationBar(
            currentIndex: indexTab,
            onTap: onTapTapped,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("")),
              BottomNavigationBarItem(icon: Icon(Icons.search),title: Text("")),
              BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("")),
            ],
          )
      ),
    );
  }

}