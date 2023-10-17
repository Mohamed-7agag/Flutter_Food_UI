// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_food_ui/screens/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff462b9c), Color(0xff644ab5)])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 160,
              backgroundColor: Colors.white,
              child: Image.asset("assets/images/food-plate-2.png"),
            ),
            const Text(
              "Enjoy\nYour Food",
              style: TextStyle(
                  fontSize: 44,
                  fontFamily: "myfont",
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const HomepageScreen(),
                ));
              },
              child: const Text(
                "Get Started",
                style: TextStyle(
                    fontFamily: "myfont",
                    fontSize: 22,
                    color: Color(0xff644ab5),
                    fontWeight: FontWeight.w500),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 11, horizontal: 65)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)))),
            ),
          ],
        ),
      ),
    );
  }
}
