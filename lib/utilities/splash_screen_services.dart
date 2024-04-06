import 'package:flutter/material.dart';
import 'dart:async';
import 'package:nedex/screens/page1.dart';

class SplashScreenServices {
  void isPage1(BuildContext context) {
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => FeatureScreen1())));
  }
}
