import 'package:flutter/material.dart';

import '../pages/BurgerPage.dart';
import '../pages/CakePage.dart';
import '../pages/IceCreamPage.dart';
import '../pages/PizzaPage.dart';
import '../pages/SoftDrinkPage.dart';
import '../pages/SushiPage.dart';

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
      onTap: () {
        if (slug == 'burger') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BurgerPage()),
          );
        } else if (slug == 'sushi') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SushiPage()),
          );
        } else if (slug == 'pizza') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PizzaPage()),
          );
        } else if (slug == 'cake') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CakePage()),
          );
        } else if (slug == 'ice_cream') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => IceCreamPage()),
          );
        } else if (slug == 'soft_drink') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SoftDrinkPage()),
          );
        }
      },
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
  }
}
