import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/screens/home.dart';

class SplashHome extends StatelessWidget {
  const SplashHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: AppColors.primaryColor.colors.first,
        splashIconSize: 300,
        pageTransitionType: PageTransitionType.bottomToTop,
        animationDuration: Duration(seconds: 3),
        curve: Curves.bounceIn,
        centered: true,
        duration: 4000,
        splashTransition: SplashTransition.rotationTransition,
        splash:
           Column(children: [ 
          Image.asset("assets/logo.png"),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Pharmaco",style: TextStyle(fontSize: 30,color: AppColors.white,fontWeight: FontWeight.bold)),
          ),
          ]),
        nextScreen: Home());
  }
}

