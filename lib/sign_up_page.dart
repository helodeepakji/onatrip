import 'package:flutter/material.dart';

import 'home_page.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('onatrip.world'),
    ),
    body: SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Text(
    'Create Account',
    style: TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Color(0xFF5C16FF),
    ),
    ),
    SizedBox(height: 20.0),
    TextField(
    decoration: InputDecoration(
    labelText: 'Full Name',
    border: OutlineInputBorder(),
    labelStyle: TextStyle(color: Color(0xFF5C16FF)),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF5C16FF)),
    ),
    ),
    ),
    SizedBox(height: 10.0),
    TextField(
    decoration: InputDecoration(
    labelText: 'Email Address',
    border: OutlineInputBorder(),
    labelStyle: TextStyle(color: Color(0xFF5C16FF)),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF5C16FF)),
    ),
    ),
    ),
    SizedBox(height: 10.0),
    TextField(
    decoration: InputDecoration(
    labelText: 'Password',
    border: OutlineInputBorder(),
    labelStyle: TextStyle(color: Color(0xFF5C16FF)),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF5C16FF)),
    ),
    ),
    obscureText: true,
    ),
    SizedBox(height: 10.0),
    TextField(
    decoration: InputDecoration(
    labelText: 'Confirm Password',
    border: OutlineInputBorder(),
    labelStyle: TextStyle(color: Color(0xFF5C16FF)),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF5C16FF)),
    ),
    ),
    obscureText: true,
    ),
    SizedBox(height: 20.0),
    OutlinedButton(
    onPressed: () {
    // Perform your sign up logic here
    // For demonstration purposes, let's navigate to HomePage directly
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => HomePage()),
    );
    },
    child: Text('Sign Up', style: TextStyle(color: Color(0xFF5C16FF))),
    style: OutlinedButton.styleFrom(
    side: BorderSide(color: Color(0xFF5C16FF)),
    ),
    ),
    SizedBox(height: 10.0),
    OutlinedButton(
    onPressed: () {
    Navigator.pushNamed(context, '/login');
    },
    child: Text('Login', style: TextStyle(color: Color(0xFF5C16FF))),
    style: OutlinedButton.styleFrom(
    side: BorderSide(color: Color(0xFF5C16FF)),
    ),
    ),
    SizedBox(height: 20.0),
    Text('Or sign up with', style: TextStyle(color: Color(0xFF5C16FF))),
    SizedBox(height: 10.0),
      OutlinedButton(
        onPressed: () {},
        child: Text('Sign Up with Google', style: TextStyle(color: Color(0xFF5C16FF))),
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Color(0xFF5C16FF)),
        ),
      ),
      OutlinedButton(
        onPressed: () {},
        child: Text('Sign Up with Facebook', style: TextStyle(color: Color(0xFF5C16FF))),
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Color(0xFF5C16FF)),
        ),
      ),
    ],
    ),
    ),
    ),
    );
  }
}

