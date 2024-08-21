

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String productImage;
  final String productCartQuantity;

  CartItem({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.productImage,
    required this.productCartQuantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Image.asset(
                "assets/images/popular_foods/$productImage.png",
                width: 100,
                height: 100,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      productName,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      productPrice,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.remove,
                            color: Color(0xFF0a2351),
                          ),
                          onPressed: () {
                            // Handle decrement here
                          },
                        ),
                        Text(
                          productCartQuantity,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF3a3a3b),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.add,
                            color: Color(0xFF0a2351),
                          ),
                          onPressed: () {
                            // Handle increment here
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}