import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/screen/main_screen.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';

class PaymentSuccessScreen extends StatefulWidget {
  const PaymentSuccessScreen({super.key});

  @override
  State<PaymentSuccessScreen> createState() => _PaymentSuccessScreenState();
}

class _PaymentSuccessScreenState extends State<PaymentSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarr(
        title: 'Payment',
        iconDiplay: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: Container(
              height: 172,
              width: 172,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                gradient: AppColors.primaryColor,
              ),
              child: Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: AppColors.white,
                  ),
                  child: ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (Rect bounds) => const RadialGradient(
                      center: Alignment.topCenter,
                      stops: [.5, 1],
                      colors: [
                        Color.fromARGB(255, 51, 228, 219),
                        Color.fromARGB(255, 0, 186, 211),
                      ],
                    ).createShader(bounds),
                    child: const Icon(
                      Icons.check_rounded,
                      size: 130,
                    ),
                  ),
                ),
              ),
            ),
          ),
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (bounds) => const RadialGradient(
              center: Alignment.topCenter,
              stops: [.5, 1],
              colors: [
                Color.fromARGB(255, 51, 228, 219),
                Color.fromARGB(255, 0, 186, 211),
              ],
            ).createShader(bounds),
            child: const Text(
              'Congratulations',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
            ),
          ),
          const Text(
            'Payment is Successfully',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'You have successfully made order',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
          const Spacer(),
          GenericFlexibleButton(
              text: "Continue Home",
              minWidth: MediaQuery.sizeOf(context).width * 0.8,
              minHeight: 50,
              fontSize: 24,
              onPressed: () {Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => MainScreen()),
  (Route<dynamic> route) => false, // This condition ensures all previous routes are removed
);}),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
