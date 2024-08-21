import 'package:flutter/material.dart';

class MenuItemCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  MenuItemCard({required this.title, required this.subtitle, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
