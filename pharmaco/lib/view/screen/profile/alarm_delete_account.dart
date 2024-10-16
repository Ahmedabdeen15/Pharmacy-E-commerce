import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';

class AlarmDeleteAccount extends StatelessWidget {
  const AlarmDeleteAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Are you sure you want to delete your account?',
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
            text: "Yes, Delete account",
            minWidth: MediaQuery.of(context).size.width * .2,
            minHeight: MediaQuery.of(context).size.height * .01,
            fontSize: 15,
            onPressed: () {
              Navigator.of(context).pop();
            })
      ],
    )

        
        ;
  }
}
