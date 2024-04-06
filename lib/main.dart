import 'package:flutter/material.dart';
import 'package:nedex/screens/splash_screen.dart';
import 'package:nedex/utilities/bottomsheet.dart';
//import 'package:nedex/screens/splash_screen_services.dart';
//import 'package:nedex/userentry.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.purple,
        ),
        home: const SplashScreen());
  }
}
