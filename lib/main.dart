// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_food_ui/screens/cart.dart';
import 'package:flutter_food_ui/screens/details.dart';
import 'package:flutter_food_ui/screens/homepage.dart';
import 'package:flutter_food_ui/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food',
      home: SplashScreen(),
    );
  }
}

