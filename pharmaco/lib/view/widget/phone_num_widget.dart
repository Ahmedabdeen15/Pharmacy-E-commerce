import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmaco/app_colors.dart';

class PhoneNumWidget extends StatelessWidget {
   // Default constructor with optional controller
   PhoneNumWidget({super.key, required this.inputHint, TextEditingController? controller})
      : controller = controller ?? TextEditingController();

  // Named constructor for sign-up use case
  const PhoneNumWidget.forSignUp({super.key, required this.inputHint, required this.controller});
  final TextEditingController controller;
final String inputHint;
  @override
  Widget build(BuildContext context) {
     return  SizedBox(
                width: MediaQuery.of(context).size.width *.8,
                child: Container(
                  decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
                  child: TextFormField(
                     controller: controller,
                     inputFormatters:  <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
         LengthLimitingTextInputFormatter(11), // Allow only digits
      ],
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: inputHint),
                        style: TextStyle(
                          foreground: Paint()..shader = AppColors.primaryColor.createShader(const Rect.fromLTWH(0, 0, 300, 70))
                        ),
                  ),
                ),
                
              );
  }
}