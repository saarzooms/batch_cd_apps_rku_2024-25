import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Text(
        'My Ecom App',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
      Text(
        'Developed By : RKU Students',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    ]));
  }
}
