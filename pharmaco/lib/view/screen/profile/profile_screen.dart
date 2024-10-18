import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/screen/help_center.dart';
import 'package:pharmaco/view/screen/privacy_policy_screen.dart';
import 'package:pharmaco/view/screen/profile/alarm_logout.dart';
import 'package:pharmaco/view/screen/profile/edit_profile_screen.dart';
import 'package:pharmaco/view/screen/profile/passwrd_mamager_screen.dart';
import 'package:pharmaco/view/screen/profile/setting_screen.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarr(
        title: " Profile ",
        iconDiplay: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: AppColors.primaryColor.colors.last,
              // decoration: BoxDecoration(gradient: AppColors.primaryColor),
              child: const Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 70,
                    child: Icon(
                      Icons.person,
                      size: 140,
                      color: Color.fromARGB(255, 0, 186, 211),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mohamed Thrwat',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      Text(
                        '0128010131',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'example..@example.com',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
                          Icons.account_box,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Profile',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const EditProfileScreen()));
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: AppColors.black,
                      ),
                    ]),
                  ),
                  //----------------------------------------------------------------------------

                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
                          Icons.payment,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Payment',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PasswordManagerScreen()));
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: AppColors.black,
                      ),
                    ]),
                  ),
                  //----------------------------------------------------------------------------
                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
                          Icons.privacy_tip,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Privacy Policy',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PrivacyPolicyScreen()));
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: AppColors.black,
                      ),
                    ]),
                  ),
                  //---------------------------------------------------------
                  //----------------------------------------------------------------------------

                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
                          Icons.settings,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Setting',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SettingScreen()));
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: AppColors.black,
                      ),
                    ]),
                  ),
                  //----------------------------------------------------------------------------//----------------------------------------------------------------------------

                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
                          Icons.help,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Help',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const HelpCenterScreen()));
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: AppColors.black,
                      ),
                    ]),
                  ),
                  //----------------------------------------------------------------------------

                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
                          Icons.logout,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Logout',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AlarmLogout()));
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: AppColors.black,
                      ),
                    ]),
                  ),
                  //----------------------------------------------------------------------------
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
