

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../animation/ScaleRoute.dart';
import '../pages/FoodDetailsPage.dart';

class PopularFoodTiles extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String rating;
  final String numberOfRating;
  final String price;
  final String slug;

  PopularFoodTiles({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.numberOfRating,
    required this.price,
    required this.slug,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, ScaleRoute(page: FoodDetailsPage()));
      },
      child: Container(
        width: 170,
        margin: EdgeInsets.symmetric(horizontal: 5), // Add margin between items
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.topRight,
                      width: double.infinity,
                      padding: EdgeInsets.only(right: 5, top: 5),
                      child: Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white70,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFfae3e2),
                              blurRadius: 25.0,
                              offset: Offset(0.0, 0.75),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Color(0xFFFEBE10),
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Center(
                      child: Image.asset(
                        'assets/images/popular_foods/' + imageUrl + ".png",
                        width: 130,
                        height: 140,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5), // Add spacing if needed
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                    color: Color(0xFF6e6e71),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white70,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFfae3e2),
                        blurRadius: 25.0,
                        offset: Offset(0.0, 0.75),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.near_me,
                    color: Color(0xFFFEBE10),
                    size: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5), // Add spacing if needed
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      rating,
                      style: TextStyle(
                        color: Color(0xFF6e6e71),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 5), // Add spacing if needed
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          size: 10,
                          color: Color(0xFFFEBE10),
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                          color: Color(0xFFFEBE10),
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                          color: Color(0xFFFEBE10),
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                          color: Color(0xFFFEBE10),
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                          color: Color(0xFF9b9b9c),
                        ),
                      ],
                    ),
                    SizedBox(width: 5), // Add spacing if needed
                    Text(
                      "($numberOfRating)",
                      style: TextStyle(
                        color: Color(0xFF6e6e71),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  '\UGX' + price,
                  style: TextStyle(
                    color: Color(0xFF6e6e71),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class PopularFoodItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        PopularFoodTiles(
          name: "Fried Egg",
          imageUrl: "ic_popular_food_1",
          rating: '4.9',
          numberOfRating: '200',
          price: '15.06',
          slug: "fried_egg",
        ),
        PopularFoodTiles(
          name: "Mixed Vegetable",
          imageUrl: "ic_popular_food_3",
          rating: "4.9",
          numberOfRating: "100",
          price: "17.03",
          slug: "",
        ),
        PopularFoodTiles(
          name: "Salad With Chicken",
          imageUrl: "ic_popular_food_4",
          rating: "4.0",
          numberOfRating: "50",
          price: "11.00",
          slug: "",
        ),
        PopularFoodTiles(
          name: "Mixed Salad",
          imageUrl: "ic_popular_food_5",
          rating: "4.00",
          numberOfRating: "100",
          price: "11.10",
          slug: "",
        ),
        PopularFoodTiles(
          name: "Red Meat, Salad",
          imageUrl: "ic_popular_food_2",
          rating: "4.6",
          numberOfRating: "150",
          price: "12.00",
          slug: "",
        ),
        PopularFoodTiles(
          name: "Mixed Salad",
          imageUrl: "ic_popular_food_5",
          rating: "4.00",
          numberOfRating: "100",
          price: "11.10",
          slug: "",
        ),
        PopularFoodTiles(
          name: "Potato, Meat Fry",
          imageUrl: "ic_popular_food_6",
          rating: "4.2",
          numberOfRating: "70",
          price: "23.00",
          slug: "",
        ),
        PopularFoodTiles(
          name: "Fried Egg",
          imageUrl: "ic_popular_food_1",
          rating: '4.9',
          numberOfRating: '200',
          price: '15.06',
          slug: "fried_egg",
        ),
        PopularFoodTiles(
          name: "Red Meat, Salad",
          imageUrl: "ic_popular_food_2",
          rating: "4.6",
          numberOfRating: "150",
          price: "12.00",
          slug: "",
        ),
      ],
    );
  }
}