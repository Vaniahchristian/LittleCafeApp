import 'package:flutter/material.dart';
import '../widgets/BottomNavBarWidget.dart';
import '../widgets/cartIcon.dart';

class OffersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Latest Offers',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0a2351),
        elevation: 0,
        actions: [
          CartIconWithBadge(),
        ],
        iconTheme: IconThemeData(
          color: Colors.white, // This changes the color of the back arrow
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find discounts, offers, special\nmeals and more!',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Action when "Check Offers" button is pressed
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Check Offers',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              // Offers List
              OfferItem(
                imageUrl: AssetImage('assets/images/popular_foods/ic_popular_food_1.png'),
                title: 'Grilled Chicken Sandwich',
                rating: 4.8,
                reviews: 154,
                category: 'Sandwiches',
              ),
              OfferItem(
                imageUrl: AssetImage('assets/images/popular_foods/ic_popular_food_2.png'),
                title: 'Margarita Pizza',
                rating: 4.7,
                reviews: 230,
                category: 'Pizza',
              ),
              OfferItem(
                imageUrl: AssetImage('assets/images/popular_foods/ic_popular_food_3.png'),
                title: 'Caesar Salad',
                rating: 4.5,
                reviews: 98,
                category: 'Salads',
              ),
              OfferItem(
                imageUrl: AssetImage('assets/images/popular_foods/ic_popular_food_4.png'),
                title: 'Spaghetti Carbonara',
                rating: 4.6,
                reviews: 187,
                category: 'Pasta',
              ),
              OfferItem(
                imageUrl: AssetImage('assets/images/popular_foods/ic_popular_food_5.png'),
                title: 'Chocolate Lava Cake',
                rating: 4.9,
                reviews: 320,
                category: 'Desserts',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}

class OfferItem extends StatelessWidget {
  final AssetImage imageUrl;
  final String title;
  final double rating;
  final int reviews;
  final String category;

  OfferItem({
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.reviews,
    required this.category,
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
                    SizedBox(width: 4),
                    Text(
                      '• $category',
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
  }
}
