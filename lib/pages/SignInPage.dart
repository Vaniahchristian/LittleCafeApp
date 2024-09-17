import 'package:flutter/material.dart';
import 'package:littlecafe/pages/resetPassword.dart';
import '../animation/ScaleRoute.dart';
import '../services/auth/auth_service.dart';
import '../widgets/SignInButton.dart';
import '../widgets/Squaretile.dart';
import 'SignUpPage.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // Controllers for text fields
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //LOGIN METHOD

  void login() async {
    //get instance of auth service

    final _authService = AuthService();

    //try sign in
    try {
      await _authService.signInWithEmailPassword(
          emailController.text, passwordController.text);
    }

    //display any errors

    catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }

  @override
  void dispose() {
    // Dispose controllers to free resources
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String defaultFontFamily = 'Roboto-Light.ttf';
    double defaultFontSize = 14;
    double defaultIconSize = 17;

    return Scaffold(
      body: SafeArea(
        child: Center(
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
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    // Email TextField
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13.0),
                      child: TextField(
                        controller: emailController, // Attach controller
                        showCursor: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color(0xFF666666),
                            size: defaultIconSize,
                          ),
                          fillColor: Color(0xFFF2F3F5),
                          hintStyle: TextStyle(
                            color: Color(0xFF666666),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                          ),
                          hintText: "Email",
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    // Password TextField
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13.0),
                      child: TextField(
                        controller: passwordController, // Attach controller
                        showCursor: true,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
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
                    ),
                    SizedBox(height: 15),
                    // Forgot password
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResetPasswordScreen()),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 13.0),
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
                    SizedBox(height: 15),
                    // Sign In Button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13.0),
                      child: SignInButtonWidget(),
                    ),
                    SizedBox(height: 30),
                    // Divider and Social Login
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey[400],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text('Or continue with',
                                style: TextStyle(color: Colors.grey[700])),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Google login
                        SquareTile(imagePath: 'assets/images/google.png'),
                        const SizedBox(width: 10),
                        // Apple login
                        SquareTile(imagePath: 'assets/images/apple.png'),
                      ],
                    ),
                  ],
                ),
              ),
              // Sign Up link
              Flexible(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context, ScaleRoute(page: SignUpPage()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color(0xFFFEBE10),
                              fontFamily: defaultFontFamily,
                              fontSize: defaultFontSize,
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
