import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';

class PasswordWidget extends StatelessWidget {
  const PasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        
         SizedBox(
          

                width: MediaQuery.of(context).size.width * .7,

              
                child: Container(
                  decoration: BoxDecoration(color: AppColors.white),
                  child: TextFormField(
                    validator: (password) {
                      if (password!.length < 8) {
                        return 'Weak password';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'password'),
                        style: TextStyle(
                          foreground: Paint()..shader = AppColors.primaryColor.createShader(Rect.fromLTWH(0, 0, 300, 70))
                        ),
                  ),
                ),
                
              ),

    );
  }
}