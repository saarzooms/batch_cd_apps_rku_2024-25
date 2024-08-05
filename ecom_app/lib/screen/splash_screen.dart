import 'dart:async';

import 'package:ecom_app/screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Center(
            child: Text(
              'My Ecom App',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
        ),
        Text(
          'Developed By : RKU Students',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ]),
    );
  }
}
