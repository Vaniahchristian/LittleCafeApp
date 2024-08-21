import 'package:flutter/material.dart';
import 'package:saturday/pages/HomePage.dart';
import 'package:saturday/pages/SignInPage.dart';
import 'package:saturday/pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        hintColor: Colors.white,

      ),
    initialRoute: '/splash',
    routes: {
      '/splash': (context) => const SplashScreen(),
      '/login' : (context) => SignInPage(),
      '/home': (context) => HomePage(),


    }
    );
  }
}
