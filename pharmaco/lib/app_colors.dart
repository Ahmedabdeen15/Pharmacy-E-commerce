import 'package:flutter/material.dart';

class AppColors {
  static const LinearGradient primaryColor = LinearGradient(
    colors: [
      Color.fromARGB(255, 51, 228, 219),
      Color.fromARGB(255, 0, 186, 211),
    ], // End color], // Define the gradient colors
    begin: Alignment.topLeft, // Starting point of the gradient
    end: Alignment.bottomRight, // Ending point of the gradient
  );

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
}
