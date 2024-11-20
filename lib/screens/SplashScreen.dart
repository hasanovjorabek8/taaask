import 'dart:async';
import 'package:flutter/material.dart';
import '../login/SignInScreen.dart'; // Import your sign-in screen

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Start a timer to wait for 3 seconds before navigating to the SignInScreen
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images.png', // Add your logo or splash image here
              height: 120,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
