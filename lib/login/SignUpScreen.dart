import 'package:flutter/material.dart';
import 'package:projrect_task/screens/main_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 24.0,
          right: 24.0,
          bottom: keyboardHeight > 0 ? keyboardHeight : 24.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/edu_learn_logo.png',
              height: 80,
            ),
            SizedBox(height: 20),
            Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                prefixIcon: Icon(Icons.person_outline),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock_outline),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: !_isConfirmPasswordVisible,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                prefixIcon: Icon(Icons.lock_outline),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavScreen()), // Replace `NextScreen` with your desired screen widget
                );
                // Sign up functionality
              },
              child: Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
