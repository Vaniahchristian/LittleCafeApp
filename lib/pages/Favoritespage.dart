import 'package:flutter/material.dart';

import '../widgets/BottomNavBarWidget.dart';
import '../widgets/cartIcon.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final List<Map<String, dynamic>> _favorites = [
    {
      'imageUrl': 'assets/images/popular_foods/ic_popular_food_1.png',
      'title': 'Cheeseburger',
      'rating': 4.7,
      'category': 'Burgers',
    },
    {
      'imageUrl': 'assets/images/popular_foods/ic_popular_food_2.png',
      'title': 'Pepperoni Pizza',
      'rating': 4.8,
      'category': 'Pizza',
    },
    {
      'imageUrl': 'assets/images/popular_foods/ic_popular_food_3.png',
      'title': 'Tiramisu',
      'rating': 4.9,
      'category': 'Desserts',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF0a2351),
        iconTheme: IconThemeData(color: Colors.white),

        actions: [
          CartIconWithBadge(),
        ],
        centerTitle: true,
      ),
      body: _favorites.isEmpty
          ? Center(
        child: Text(
          'No favorites yet!',
          style: TextStyle(fontSize: 18, color: Colors.grey[700]),
        ),
      )
          : ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _favorites.length,
        itemBuilder: (context, index) {
          final favorite = _favorites[index];
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
                  child: Image.asset(
                    favorite['imageUrl'],
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
                        favorite['title'],
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
                            '${favorite['rating']}',
                            style: TextStyle(
                              color: Colors.grey[700],
                            ),
                          ),
                          SizedBox(width: 4),
                          Text(
                            '• ${favorite['category']}',
                            style: TextStyle(
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
