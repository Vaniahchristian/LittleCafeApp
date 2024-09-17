import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:littlecafe/pages/HomePage.dart';
import 'package:littlecafe/pages/splash.dart';
import 'package:littlecafe/services/auth/auth_gate.dart';
import 'package:littlecafe/themes/theme_provider.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'models/restaurant.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
      MultiProvider(providers:[
        //themeprovider
        ChangeNotifierProvider(create: (context) => ThemeProvider()),

        ChangeNotifierProvider(create: (context) => Restaurant()),


      ],
        child: MyApp(),

      ),

      );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     /* theme: ThemeData(
        fontFamily: 'Roboto',
        hintColor: Colors.white,

      ),*/

        theme: Provider.of<ThemeProvider>(context).themeData,
    initialRoute: '/splash',
    routes: {
      '/splash': (context) => const SplashScreen(),
      //'/login' : (context) => SignInPage(),
      '/login' : (context) => AuthGate(),
      '/home': (context) => HomePage(),


    }
    );
  }
}
