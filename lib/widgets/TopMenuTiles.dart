


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopMenuTiles extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String slug;
  final Color color;

  TopMenuTiles({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.color,
    required this.slug,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 80,
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Card(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/topmenu/' + imageUrl + ".png",
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 8),
                Flexible(
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }}
