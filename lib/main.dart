import 'package:flutter/material.dart';
import 'splash_scree_page.dart';

import 'login_page.dart';
import 'sign_up_page.dart'; // Import the LoginPage file


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'onatrip.world',
      theme: ThemeData(
        primaryColor: Color(0xFF5C16FF),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
      },
    );
  }
}
