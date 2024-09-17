import 'package:flutter/material.dart';


// Import your respective pages
import '../animation/ScaleRoute.dart';
import '../pages/Favoritespage.dart';
import '../pages/HomePage.dart';
import '../pages/Mainmenu.dart';
import '../pages/Offerspage.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    MenuPage(),
    OffersPage(),
    FavoritesPage(),
    // ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.push(context, ScaleRoute(page: _pages[index]));
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.restaurant_menu),
          label: 'Menu',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard),
          label: 'Offers',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
        /*BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.user),
          label: 'Profile',
        ),*/
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xFFFEBE10),
      onTap: _onItemTapped,
    );
  }
}
