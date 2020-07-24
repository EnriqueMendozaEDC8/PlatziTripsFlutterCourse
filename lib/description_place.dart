import 'package:flutter/material.dart';
import 'review_list.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget{
  String namePlace = "";
  int stars = 0;
  String descriptionPlace = "";

  DescriptionPlace(this.namePlace,this.stars,this.descriptionPlace);
  @override
  Widget build(BuildContext context) {

    final start_half = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final start_border = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(
          top: 20,
          right: 20.0,
          left: 20.0
      ),
      child: Text(
          descriptionPlace,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15,
          ),
        textAlign: TextAlign.justify,
      ),
    );
    final tittle_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
              namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left
          )
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            start_half,
            start_border
          ],
        )
      ],
    );

    final description_widget = Container(
      margin: EdgeInsets.only(
          top: 0,
          right: 0
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            tittle_stars,
            description,
            ButtonPurple()
          ],
        ),
    );

    return description_widget;
  }
  
}