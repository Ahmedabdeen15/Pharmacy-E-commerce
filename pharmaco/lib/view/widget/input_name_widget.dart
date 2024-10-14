import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmaco/app_colors.dart';

class InputNameWidget extends StatelessWidget {
  const InputNameWidget({super.key,required this.inputHint});
final String inputHint;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                width: MediaQuery.of(context).size.width *.8,
                child: Container(
                  decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
                  child: TextFormField(
                     inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp("[a-zA-Z ]")), // Allow only letters and spaces
                LengthLimitingTextInputFormatter(30), // Limit to 30 characters
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