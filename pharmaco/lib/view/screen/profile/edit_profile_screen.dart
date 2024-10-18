import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/date_widget.dart';
import 'package:pharmaco/view/widget/email_input_widget.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';
import 'package:pharmaco/view/widget/input_name_widget.dart';
import 'package:pharmaco/view/widget/phone_num_widget.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

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
                mainAxisAlignment: MainAxisAlignment.center,
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
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 50, bottom: 10),
                    child: const Text("Full Name ",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 18,
                        ))),
                const Center(
                    child: InputNameWidget(
                  inputHint: "Mohamed Tharwat",
                )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 50, bottom: 10),
                    child: const Text("Email ",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 18,
                        ))),
                Center(
                    child: EmailInputWidget(
                  inputHint: "example@example.com",
                )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 50, bottom: 10),
                    child: const Text("Phone ",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 18,
                        ))),
                const Center(
                    child: PhoneNumWidget(
                  inputHint: "01200000000",
                )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 50, bottom: 10),
                    child: const Text("Date ",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 18,
                        ))),
                Center(
                    child: DateWidget(
                  inputHint: "MM'\'DD'\'YY",
                )),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            GenericFlexibleButton(
                text: "Change Password",
                minWidth: MediaQuery.of(context).size.width * .4,
                minHeight: MediaQuery.of(context).size.height * .03,
                fontSize: 18,
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
