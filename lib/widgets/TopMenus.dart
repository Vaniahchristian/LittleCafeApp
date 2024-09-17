import 'package:flutter/material.dart';

import 'TopMenuTiles.dart';

class TopMenus extends StatefulWidget {
  @override
  _TopMenusState createState() => _TopMenusState();
}

class _TopMenusState extends State<TopMenus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 5), // Added padding
        shrinkWrap: true, // Added shrinkWrap
        children: <Widget>[
          TopMenuTiles(name: "Burger", imageUrl: "ic_burger", slug: "burger", color: Color(0xFF0a2351)),
          TopMenuTiles(name: "Sushi", imageUrl: "ic_sushi", slug: "sushi", color: Color(0xFF0a2351)),
          TopMenuTiles(name: "Pizza", imageUrl: "ic_pizza", slug: "pizza", color: Color(0xFF0a2351)),
          TopMenuTiles(name: "Cake", imageUrl: "ic_cake", slug: "cake", color: Color(0xFF0a2351)),
          TopMenuTiles(name: "Ice Cream", imageUrl: "ic_ice_cream", slug: "ice_cream", color: Color(0xFF0a2351)),
          TopMenuTiles(name: "Soft Drink ", imageUrl: "ic_soft_drink", slug: "soft_drink", color: Color(0xFF0a2351)),

        ],
      ),
    );
  }
}

