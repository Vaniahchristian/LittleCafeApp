import 'package:flutter/material.dart';

import '../widgets/BottomNavBarWidget.dart';
import '../widgets/MenuItemCard.dart';
import '../widgets/SearchWidget.dart';
import '../widgets/cartIcon.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor:Color(0xFF0a2351),
        title: Text(
          'Main Menu',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0a2351),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          CartIconWithBadge(),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchWidget(),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  MenuItemCard(
                    title: 'Burger',
                    subtitle: '120 Items',
                    imageUrl: 'assets/images/topmenu/ic_burger.png',
                    slug: 'burger',
                  ),
                  MenuItemCard(
                    title: 'Sushi',
                    subtitle: '220 Items',
                    imageUrl: 'assets/images/topmenu/ic_sushi.png',
                    slug: 'sushi',
                  ),
                  MenuItemCard(
                    title: 'Pizza',
                    subtitle: '155 Items',
                    imageUrl: 'assets/images/topmenu/ic_pizza.png',
                    slug: 'pizza',
                  ),
                  MenuItemCard(
                    title: 'Cake',
                    subtitle: '25 Items',
                    imageUrl: 'assets/images/topmenu/ic_cake.png',
                    slug: 'cake',
                  ),
                  MenuItemCard(
                    title: 'Ice Cream',
                    subtitle: '25 Items',
                    imageUrl: 'assets/images/topmenu/ic_ice_cream.png',
                    slug: 'ice_cream',
                  ),
                  MenuItemCard(
                    title: 'Soft Drink ',
                    subtitle: '25 Items',
                    imageUrl: 'assets/images/topmenu/ic_soft_drink.png',
                    slug: 'soft_drink',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
