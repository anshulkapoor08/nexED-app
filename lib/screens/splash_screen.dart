import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nedex/utilities/splash_screen_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashScreenServices splashscreen = SplashScreenServices();
  void initState() {
    super.initState();
    splashscreen.isPage1(context);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Center(
              child: Lottie.asset('assets/lottie/loginbook.json'),
             )
            ],
          ),
        ),
      ),
    );
  }
}
