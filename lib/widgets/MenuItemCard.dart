import 'package:flutter/material.dart';

import '../pages/BurgerPage.dart';
import '../pages/CakePage.dart';
import '../pages/IceCreamPage.dart';
import '../pages/PizzaPage.dart';
import '../pages/SoftDrinkPage.dart';
import '../pages/SushiPage.dart';

class MenuItemCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String slug;

  MenuItemCard({required this.title, required this.subtitle, required this.imageUrl,required this.slug});

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
    child:  Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(8.0),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            imageUrl,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.orange),
      ),
    ));
  }
}
