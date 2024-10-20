import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/screen/account_password/login_screen.dart';
import 'package:pharmaco/view/screen/main_screen.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';

class AlarmPaswordChanged extends StatelessWidget {
  const AlarmPaswordChanged({key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Password sucsess changed ! ',
        style: TextStyle(
          color: AppColors.black,
          fontSize: 15,
        ),
      ),
      actions: [
        GenericFlexibleButton(
            text: "Back ",
            minWidth: MediaQuery.of(context).size.width * .2,
            minHeight: MediaQuery.of(context).size.height * .01,
            fontSize: 15,
            onPressed: () {
              Navigator.of(context).pop();
            }),
        const SizedBox(
          width: 30,
        ),
        GenericFlexibleButton(
            text: " OK ",
            minWidth: MediaQuery.of(context).size.width * .2,
            minHeight: MediaQuery.of(context).size.height * .01,
            fontSize: 15,
            onPressed: () {
              Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => LoginScreen()),
  (Route<dynamic> route) => false, // This condition ensures all previous routes are removed
);



              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const MainScreen(initialIndex: 3)),
              //   //(Route<dynamic> route) => false,
              // );
              //print(RegisterOrProfileScreen().isLogin);
            })
      ],
    );
  }
}
