



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../pages/HomePage.dart';
import '../../pages/SignInPage.dart';


class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context,snapshot){
            //user is logged in
          if (snapshot.hasData){
            return HomePage();
          }



            //user is not logged in

            else {
              return SignInPage();




          }








          }
      )
    );
  }
}
