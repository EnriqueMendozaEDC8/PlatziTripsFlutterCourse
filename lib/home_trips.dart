import 'package:flutter/material.dart';
import 'package:platzitrippsapp/description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[
          ListView(
            children: <Widget>[
              new DescriptionPlace("Duwili Ella",4,"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
              ReviewList()
            ],
          ),
          HeaderAppBar(),
        ]
    );
  }
}