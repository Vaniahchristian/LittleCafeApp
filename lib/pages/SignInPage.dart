import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saturday/pages/resetPassword.dart';
import '../animation/ScaleRoute.dart';
import '../widgets/SignInButton.dart';
import '../widgets/facebookLogin.dart';
import 'SignUpPage.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    String defaultFontFamily = 'Roboto-Light.ttf';
    double defaultFontSize = 14;
    double defaultIconSize = 17;

    return Scaffold(
      body: SingleChildScrollView(  // Added SingleChildScrollView
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 30),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,  // Adjusted height to fit the screen size
          color: Colors.white70,
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: InkWell(
                  child: Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.close),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Flexible(
                flex: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      flex: 5, // Adjust flex as needed
                      child: Container(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 600, // Set the desired width
                          height: 800, // Set the desired height
                          child: Image.asset(
                            "assets/images/menus/logo.png",
                            fit: BoxFit.contain, // Adjust this as needed (BoxFit.cover, BoxFit.fitWidth, etc.)
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      showCursor: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Color(0xFF666666),
                          size: defaultIconSize,
                        ),
                        fillColor: Color(0xFFF2F3F5),
                        hintStyle: TextStyle(
                            color: Color(0xFF666666),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize),
                        hintText: "Phone Number",
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      showCursor: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Color(0xFF666666),
                          size: defaultIconSize,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Color(0xFF666666),
                          size: defaultIconSize,
                        ),
                        fillColor: Color(0xFFF2F3F5),
                        hintStyle: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize,
                        ),
                        hintText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ResetPasswordScreen()),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        child: Text(
                          "Forgot your password?",
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                            fontStyle: FontStyle.normal,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    SignInButtonWidget(),
                    SizedBox(
                      height: 2,
                    ),
                    FacebookGoogleLogin()
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => {
                          Navigator.push(context, ScaleRoute(page: SignUpPage()))
                        },
                        child: Container(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color(0xFFFEBE10), // Full opacity
                              fontFamily: defaultFontFamily,
                              fontSize: defaultFontSize,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
