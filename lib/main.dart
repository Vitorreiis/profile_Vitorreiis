import 'package:flutter/material.dart';
import 'package:portfolio_app/app/screens/home/home_screen.dart';

import 'app/screens/home/teste.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Vitorreiis',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}
