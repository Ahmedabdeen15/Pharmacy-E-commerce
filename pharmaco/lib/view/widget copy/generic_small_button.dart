import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';

class GenericSmallButton extends StatelessWidget {
  final String text;
  final Gradient gradient;
  final bool active;
  final VoidCallback onPressed;
  final bool category;
  const GenericSmallButton({
    super.key,
    required this.text,
    this.gradient = AppColors.primaryColor,
    required this.active,
    required this.category,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: category ? 100 : 146, // Minimum width
        minHeight: 41, // Minimum height
      ),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0), // Border padding
        child: Container(
          decoration: BoxDecoration(
            color: active ? Colors.transparent : Colors.white,
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
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
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
