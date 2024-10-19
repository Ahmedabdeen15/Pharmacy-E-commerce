import 'package:flutter/material.dart';

class PaymentMethodCard extends StatelessWidget {
  final String methodName;
  final IconData methodIcon;
  final bool isSelected;
  final VoidCallback onTap;

  const PaymentMethodCard({
    super.key,
    required this.methodName,
    required this.methodIcon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(240, 248, 255, 1), // Background color
          borderRadius: BorderRadius.circular(30), // Rounded corners
          border: Border.all(
            color: isSelected
                ? Colors.blue // Border color when selected
                : Colors.grey
                    .withOpacity(0.3), // Border color when not selected
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  methodIcon,
                  color: const Color.fromRGBO(51, 228, 219, 1), // Icon color
                  size: 24, // Icon size
                ),
                const SizedBox(width: 12), // Space between icon and text
                Text(
                  methodName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Radio(
              value: isSelected,
              groupValue: true, // Radio button selection
              onChanged: (_) => onTap(),
              activeColor: const Color.fromRGBO(51, 228, 219, 1), // Radio color
            ),
          ],
        ),
      ),
    );
  }
}
