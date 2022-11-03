import 'package:cowmespickup/pages/startPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:cowmespickup/pages/home.dart';
import 'package:cowmespickup/pages/login.dart';
import 'package:cowmespickup/pages/signup.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (_) => StartPage(),
        '/login': (_) => LoginPage(),
        '/signup': (_) => SignupPage(),
        '/home': (_) => Home(),
        // '/booking': (_) => BookingPage(),
      },
    );
  }
}
