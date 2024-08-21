import 'package:flutter/cupertino.dart';

class FoodTitleWidget extends StatelessWidget {
  final String productName;
  final String productPrice;


  FoodTitleWidget({
    required this.productName,
    required this.productPrice,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              productName,
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              productPrice,
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
