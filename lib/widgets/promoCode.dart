


import 'package:flutter/material.dart';

class PromoCodeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3),
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFe6e1e1), width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFe6e1e1), width: 1.0),
            borderRadius: BorderRadius.circular(7),
          ),
          fillColor: Colors.white,
          hintText: 'Add Your Promo Code',
          filled: true,
          suffixIcon: IconButton(
            icon: Icon(
              Icons.local_offer,
              color: Color(0xFFFEBE10),
            ),
            onPressed: () {
              // Add functionality for applying promo code here
              debugPrint('Promo Code Applied');
            },
          ),
        ),
      ),
    );
  }
}
