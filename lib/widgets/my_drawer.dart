import 'package:flutter/material.dart';
import 'package:littlecafe/pages/ProfileDetails.dart';
import '../pages/Settings.dart';
import '../services/auth/auth_service.dart';
import 'my_drawertile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout(BuildContext context) async {
    final authService = AuthService();
    try {
      await authService.signOut();
      // Navigate to the login screen or show a confirmation message
      Navigator.pushReplacementNamed(context, '/login');
    } catch (e) {
      // Handle any errors that occur during sign out
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error logging out. Please try again.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          DrawerHeader(
            child: Container(
              height: 142,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/menus/logo.png",
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
          ),
          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerTile(
            text: "P R O F I L E",
            icon: Icons.person,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
          MyDrawerTile(
            text: "S E T T I N G S",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),
          Spacer(),
          MyDrawerTile(
            text: "L O G O U T",
            icon: Icons.logout,
            onTap: () => logout(context),
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
