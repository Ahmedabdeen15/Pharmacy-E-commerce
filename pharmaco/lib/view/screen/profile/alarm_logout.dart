import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/screen/main_screen.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';

class AlarmLogout extends StatelessWidget {
  const AlarmLogout({key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Are you sure you want to log out?',
        style: TextStyle(
          color: AppColors.black,
          fontSize: 15,
        ),
      ),
      actions: [
        GenericFlexibleButton(
            text: "Cancle ",
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
            text: "Yes, Logout",
            minWidth: MediaQuery.of(context).size.width * .2,
            minHeight: MediaQuery.of(context).size.height * .01,
            fontSize: 15,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const MainScreen(initialIndex: 3)),
                //(Route<dynamic> route) => false,
              );
              //print(RegisterOrProfileScreen().isLogin);
            })
      ],
    );
  }
}
