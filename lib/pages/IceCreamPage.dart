import 'package:flutter/material.dart';
import '../widgets/BottomNavBarWidget.dart';
import '../widgets/cartIcon.dart';

class IceCreamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ice Cream Menu', style: TextStyle(color: Colors.white)),
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
                'Explore our delicious sushi selection!',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              SizedBox(height: 10),
              // Sushi Menu List
              SushiItem(
                imageUrl: AssetImage(
                    'assets/images/popular_foods/ic_popular_food_1.png'),
                title: 'California Roll',
                rating: 4.8,
                reviews: 250,
                description:
                    'Fresh crab, avocado, and cucumber wrapped in seaweed.',
              ),
              SushiItem(
                imageUrl: AssetImage(
                    'assets/images/popular_foods/ic_popular_food_2.png'),
                title: 'Tuna Sashimi',
                rating: 4.7,
                reviews: 200,
                description:
                    'Slices of fresh tuna served with soy sauce and wasabi.',
              ),
              SushiItem(
                imageUrl: AssetImage(
                    'assets/images/popular_foods/ic_popular_food_3.png'),
                title: 'Salmon Nigiri',
                rating: 4.9,
                reviews: 320,
                description: 'Sushi rice topped with fresh salmon slices.',
              ),
              SushiItem(
                imageUrl: AssetImage(
                    'assets/images/popular_foods/ic_popular_food_4.png'),
                title: 'Eel Roll',
                rating: 4.6,
                reviews: 180,
                description:
                    'Grilled eel with sweet sauce, avocado, and cucumber.',
              ),
              SushiItem(
                imageUrl: AssetImage(
                    'assets/images/popular_foods/ic_popular_food_5.png'),
                title: 'Tempura Roll',
                rating: 4.7,
                reviews: 190,
                description: 'Crispy tempura shrimp with avocado and cucumber.',
              ),
              SushiItem(
                imageUrl: AssetImage(
                    'assets/images/popular_foods/ic_popular_food_5.png'),
                title: 'Spicy Tuna Roll',
                rating: 4.8,
                reviews: 280,
                description:
                    'Tuna with spicy mayo, cucumber, and sesame seeds.',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}

class SushiItem extends StatelessWidget {
  final AssetImage imageUrl;
  final String title;
  final double rating;
  final int reviews;
  final String description;

  SushiItem({
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
