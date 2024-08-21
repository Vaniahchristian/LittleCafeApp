import 'package:flutter/material.dart';
import 'package:saturday/widgets/popularFoodList.dart';

class PopularFoodsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PopularFoodTitle(),
          SizedBox(height: 10), // Add spacing if needed
          Container(
            height: 210, // Adjust this value as needed
            child: PopularFoodItems(),
          ),
        ],
      ),
    );
  }
}


class PopularFoodTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Popular Foods",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF0a2351),
              fontWeight: FontWeight.w600,
            ),
          ),

          Text(
            "See all",
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }
}


