import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
   static const LinearGradient primaryColor =  LinearGradient(
  colors: [Color(0xFF33E4DB), Color(0xFF00BBD3)], // End color], // Define the gradient colors
  begin: Alignment.topLeft, // Starting point of the gradient
  end: Alignment.bottomRight, // Ending point of the gradient
);
 
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

}