import 'package:flutter/material.dart';
import 'login_screen.dart';
import '../rounded_text_field.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _usernameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  width: 300,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Create an account',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Invest and double your income now.',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 40),
                      RoundedTextField(
                        labelText: 'Full name',
                        hintText: 'Enter your full name',
                        controller: _usernameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your full name';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            // Real-time validation logic for full name field
                            // Update UI based on validation result
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      RoundedTextField(
                        labelText: 'Email address',
                        hintText: 'Enter your email address',
                        controller: _emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email address';
                          } else if (!isValidEmail(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            // Real-time validation logic for email field
                            // Update UI based on validation result
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      RoundedTextField(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          } else if (value.length < 6) {
                            return 'Password must be at least 6 characters long';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            // Real-time validation logic for password field
                            // Update UI based on validation result
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Container(
                width: double.infinity, // Make the container full width
                padding: EdgeInsets.symmetric(horizontal: 20), // Optional padding
                 child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.green), // Set the background color
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.white), // Set the text color
                  ),
                 onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Form is valid, perform form submission logic
                      // e.g., submit data to server, navigate to next screen
                    }
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
                  child: Text('Already have a account?')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isValidEmail(String value) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(value);
  }
}
