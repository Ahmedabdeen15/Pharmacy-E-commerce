import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pharmaco/app_colors.dart';

class SplashHome extends StatelessWidget {
  const SplashHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: 300,
        pageTransitionType: PageTransitionType.bottomToTop,
        backgroundColor: Colors.pink,
        animationDuration: Duration(seconds: 3),
        curve: Curves.bounceIn,
        centered: true,
        duration: 4000,
        splashTransition: SplashTransition.rotationTransition,
        splash: Image.asset("assets/images/splash.png"),nextScreen: Scaffold());
  }
}

class DB {
}