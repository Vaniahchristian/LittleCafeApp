


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.timelapse,
                color: Color(0xFF404aff),
                size: 35,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "12pm-3pm",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFa9a9a9),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.directions,
                color: Color(0xFF23c58a),
                size: 35,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "3.5 km",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFa9a9a9),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.map,
                color: Color(0xFFFEBE10),
                size: 35,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Map View",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFa9a9a9),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.directions_bike,
                color: Color(0xFFFEBE10),
                size: 35,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Delivery",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFa9a9a9),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}