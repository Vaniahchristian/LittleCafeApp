import 'package:flutter/material.dart';
import '../widgets/cartIcon.dart';

class BurgerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burger Menu', style: TextStyle(color: Colors.white)),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore our delicious burger selection!',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              SizedBox(height: 10),
              // Burger Menu List
              BurgerItem(
                imageUrl: AssetImage(
                    'assets/images/popular_foods/ic_popular_food_1.png'),
                title: 'Classic Burger',
                rating: 4.5,
                reviews: 200,
                description:
                    'A juicy beef patty with fresh lettuce, tomatoes, and pickles.',
              ),
              BurgerItem(
                imageUrl: AssetImage(
                    'assets/images/popular_foods/ic_popular_food_2.png'),
                title: 'Cheese Burger',
                rating: 4.7,
                reviews: 250,
                description:
                    'Classic burger with melted cheese and all the trimmings.',
              ),
              BurgerItem(
                imageUrl: AssetImage(
                    'assets/images/popular_foods/ic_popular_food_3.png'),
                title: 'Chicken Burger',
                rating: 4.6,
                reviews: 180,
                description:
                    'Crispy chicken patty with lettuce, tomatoes, and mayo.',
              ),
              BurgerItem(
                imageUrl: AssetImage(
                    'assets/images/popular_foods/ic_popular_food_4.png'),
                title: 'Vegan Burger',
                rating: 4.4,
                reviews: 140,
                description:
                    'A plant-based patty with fresh veggies and vegan mayo.',
              ),
              BurgerItem(
                imageUrl: AssetImage(
                    'assets/images/popular_foods/ic_popular_food_5.png'),
                title: 'Bacon Burger',
                rating: 4.8,
                reviews: 220,
                description: 'Topped with crispy bacon and melted cheese.',
              ),
              BurgerItem(
                imageUrl: AssetImage(
                    'assets/images/popular_foods/ic_popular_food_5.png'),
                title: 'Double Burger',
                rating: 4.9,
                reviews: 300,
                description: 'Double the beef, double the flavor!',
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}

class BurgerItem extends StatelessWidget {
  final AssetImage imageUrl;
  final String title;
  final double rating;
  final int reviews;
  final String description;

  BurgerItem({
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.reviews,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image(
              image: imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    SizedBox(width: 4),
                    Text(
                      '$rating ($reviews ratings)',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
