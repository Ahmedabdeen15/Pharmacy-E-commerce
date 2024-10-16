import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';

class NotificationSettingScreen extends StatefulWidget {
  const NotificationSettingScreen({super.key});

  @override
  State<NotificationSettingScreen> createState() =>
      _NotificationSettingScreenState();
}

class _NotificationSettingScreenState extends State<NotificationSettingScreen> {
  bool _notificationsEnabled = true;
  bool _savedDisbled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarr(
        title: " Notification Setting ",
        iconDiplay: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              width: double.infinity,
              child: Row(children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    gradient: AppColors.primaryColor,
                  ),
                  child: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  'Notification Setting',
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Switch(
                  activeColor: AppColors.white,
                  activeTrackColor: const Color.fromARGB(255, 0, 186, 211),
                  inactiveThumbColor: AppColors.white,
                  inactiveTrackColor: const Color.fromARGB(255, 0, 186, 211),
                  // focusColor: AppColors.white,
                  //Color.fromARGB(255, 51, 228, 219) ,
                  value: _notificationsEnabled,
                  onChanged: (value) {
                    setState(() {
                      _notificationsEnabled = value;
                    });
                  },
                ),
              ]),
            ),
//----------------------------------------------------------------------------
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              width: double.infinity,
              child: Row(children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    gradient: AppColors.primaryColor,
                  ),
                  child: const Icon(
                    Icons.save,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  'Saved',
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Switch(
                  activeColor: AppColors.white,
                  activeTrackColor: const Color.fromARGB(255, 0, 186, 211),
                  inactiveThumbColor: AppColors.white,
                  inactiveTrackColor: const Color.fromARGB(255, 0, 186, 211),
                  // focusColor: AppColors.white,
                  //Color.fromARGB(255, 51, 228, 219) ,
                  value: _savedDisbled,
                  onChanged: (value) {
                    setState(() {
                      _savedDisbled = value;
                    });
                  },
                ),
              ]),
            ),
//-----------------------------------------------------------------
          ],
        ),
      ),
    );
  }
}
