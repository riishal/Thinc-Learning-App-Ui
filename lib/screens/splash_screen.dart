import 'dart:async';

import 'package:flutter/material.dart';
import 'package:thinc_app/screens/screen1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      navigateTopage1();
    });
    super.initState();
  }

  void navigateTopage1() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Screen1(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/splash.png'),
      ),
    );
  }
}
