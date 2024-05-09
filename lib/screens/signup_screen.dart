import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'login_screen.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20), // Optional padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/assets/images/signupimage.png', // Your image path
                width: 200, // Adjust as needed
              ),
              SizedBox(height: 20),
              Container(
                width: 300, // Set the desired width
                child: Column(
                  children: [
                    SizedBox(
                        height: 20), // Add SizedBox between widgets if needed
                    Text(
                      'Stay on top of your finance with us',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                        height: 20), // Add SizedBox between widgets if needed
                    Text(
                      'We are your new financial Advisors to recommend the best investments for you.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity, // Make the container full width
                padding:
                    EdgeInsets.symmetric(horizontal: 20), // Optional padding
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.green), // Set the background color
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.white), // Set the text color
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: Text(
                    'Create Account',
                    style: TextStyle(fontSize: 16), // Optional text style
                  ),
                ),
              ),
              TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text('Login')),
            ],
          ),
        ),
      ),
    );
  }
}
