import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';

class EmailInputWidget extends StatelessWidget {
   EmailInputWidget({super.key,required this.inputHint});
final String inputHint;
final emailController = TextEditingController();
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
                   controller: emailController,
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