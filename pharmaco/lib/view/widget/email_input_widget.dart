import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';

class EmailInputWidget extends StatelessWidget {
   // Default constructor with an optional controller
  EmailInputWidget({super.key, required this.inputHint, TextEditingController? controller})
      : controller = controller ?? TextEditingController();

  // Named constructor for sign-up specifically
  EmailInputWidget.forSignUp({super.key, required this.inputHint, required this.controller});
final String inputHint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    
   return 
         SizedBox(
                width: MediaQuery.of(context).size.width *.8,
                child: Container(
                  decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
                  child: TextFormField(
                     validator: (email) {
                    if (email!.contains('@') && email.contains('.')) {
                      return null;
                    }
                    return 'Incorrect email';
                  },
                   controller: controller,
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