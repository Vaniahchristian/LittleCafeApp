


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xFF0a2351).withOpacity(0.5), // Adjust opacity if needed
            ),
            BoxShadow(
              color: Color(0xFF0a2351).withOpacity(0.3), // Adjust opacity if needed
            ),
          ],
          gradient: LinearGradient(
            colors: [Color(0xFF0a2351), Color(0xFF0a2351)], // Gradient color
            begin: const FractionalOffset(0.2, 0.2),
            end: const FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: MaterialButton(

          highlightColor: Colors.transparent,
          splashColor: Color(0xFF0a2351), // Splash color
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 42.0),
            child: Text(
              "SIGN UP",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,

                fontFamily: "WorkSansBold",
              ),
            ),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        )
    );
  }
}
