import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';

class TextInputWidget extends StatelessWidget {
  const TextInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: 
         SizedBox(
                width: MediaQuery.of(context).size.width * .7,
                child: Container(
                  decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: 'input'),
                        style: TextStyle(
                          foreground: Paint()..shader = AppColors.primaryColor.createShader(const Rect.fromLTWH(0, 0, 300, 70))
                        ),
                  ),
                ),
                
              ),

    );
  }
}