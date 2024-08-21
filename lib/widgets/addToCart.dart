

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../animation/ScaleRoute.dart';
import '../pages/FoodOrderPage.dart';

class AddToCartMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.remove),
            color: Colors.black,
            iconSize: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, ScaleRoute(page: FoodOrderPage()));
            },
            child: Container(
              width: 200.0,
              height: 45.0,
              decoration: BoxDecoration(
                color: Color(0xFF0a2351),
                border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  'Add To Cart',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            color: Color(0xFF0a2351),
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}
