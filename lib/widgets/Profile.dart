import 'package:flutter/material.dart';
import '../pages/ProfileDetails.dart';
import 'cartIcon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
          child: ClipOval(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/img.png"),
                ),
              ),
            ),
          ),
        ),
      ),
      title: const Text(
        "MontyD_Lemon",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      //backgroundColor: Colors.transparent,
      backgroundColor: Color(0xFF0a2351),

      actions: <Widget>[
        CartIconWithBadge(),
      ],
      centerTitle: true,
      //backgroundColor: Color(0xFF0a2351),
    );
  }
}


