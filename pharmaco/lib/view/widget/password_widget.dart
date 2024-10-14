import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({super.key});

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {

      bool hidePassword = true;
  @override
  Widget build(BuildContext context) {

    return 
         SizedBox(
                width: MediaQuery.of(context).size.width * .8,
               
                child: Container(
                  decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
                  child: TextFormField(
                    validator: (password) {
                      if (password!.length < 8) {
                        return 'Weak password';
                      }
                      return null;
                    },
                    obscureText: hidePassword,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      }, icon: hidePassword ?  Icon(Icons.visibility_off,color: AppColors.primaryColor.colors.first,):  Icon(Icons.visibility,color: AppColors.primaryColor.colors.first,)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: '***********'),
                        style: TextStyle(
                          foreground: Paint()..shader = AppColors.primaryColor.createShader(const Rect.fromLTWH(0, 0, 300, 70))
                        ),
                  ),
                ),
                
              

    );
  }
}