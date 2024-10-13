import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';

class GenericFlexibleButton extends StatelessWidget {
  final String text;
  final double minWidth;
  final double minHeight;
  final double fontSize;
  final VoidCallback onPressed;
  const GenericFlexibleButton({
    super.key,
    required this.text,
    required this.minWidth,
    required this.minHeight,
    required this.fontSize,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: minWidth, // Minimum width
        minHeight: minHeight, // Minimum height
      ),
      decoration: BoxDecoration(
        gradient: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0), // Border padding
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 20.0,
              ), // Increase padding for text space
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0),
              ),
            ),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontWeight: FontWeight.w400,
              ),
              overflow: TextOverflow.ellipsis, // Add ellipsis if text overflows
            ),
          ),
        ),
      ),
    );
  }
}
