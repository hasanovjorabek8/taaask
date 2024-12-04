import 'package:flutter/material.dart';
import 'courses/courses_screen.dart'; // Import the Kitob5 file
import 'login/SignUpScreen.dart'; // Import the SignUpScreen file
import 'login/SignInScreen.dart'; // Import the SignInScreen file
import 'screens/SplashScreen.dart'; // Import the SplashScreen file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EduLearn App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
          bodyMedium: TextStyle(fontSize: 18, color: Colors.teal),
        ),
      ),
      // Set the initial screen as SplashScreen
      home: SplashScreen(),
      // Define the routes for navigation
      routes: {
        '/signin': (context) => SignInScreen(),
        '/signup': (context) => SignUpScreen(),
        '/kitob5': (context) => Kitob5(videoId: 'gmgw6nLgzbY'), // Add Kitob5 route
      },
    );
  }
}
