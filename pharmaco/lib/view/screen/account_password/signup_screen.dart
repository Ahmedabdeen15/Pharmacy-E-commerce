import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/screen/account_password/login_screen.dart';
import 'package:pharmaco/view/screen/account_password/verify_your_account_screen.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/email_input_widget.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';
import 'package:pharmaco/view/widget/input_name_widget.dart';
import 'package:pharmaco/view/widget/password_widget.dart';
import 'package:pharmaco/view/widget/phone_num_widget.dart';
import 'package:intl/intl.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController dateC = TextEditingController();
    return Scaffold(
      appBar: const CustomAppBarr(title: "New Account"),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 50, bottom: 10),
                        child: const Text("Full Name",
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 18,
                            ))),
                    const Center(
                        child: InputNameWidget(
                      inputHint: "Ahmed Ali",
                    )),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 50, bottom: 10),
                        child: const Text("Password",
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 18,
                            ))),
                    const PasswordWidget(),
                  ],
                ),
                const SizedBox(
                  height: 5,
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
                  height: 5,
                ),
                Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 50, bottom: 10),
                        child: const Text("Phone Number",
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 18,
                            ))),
                    const Center(
                        child: PhoneNumWidget(
                      inputHint: "01228745632",
                    )),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 50, top: 10),
                        child: const Text("Birth Date",
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 18,
                            ))),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .8,
                      child: Container(
                        decoration: const BoxDecoration(color: AppColors.white),
                        child: TextField(
                          controller: dateC,
                          onTap: () async {
                            var date = await showDatePicker(
                                context: context,
                                firstDate: DateTime.now(),
                                initialDate: DateTime.now(),
                                lastDate: DateTime.now());
                            var formatedDate = DateFormat.yMd().format(date!);
                            dateC.text = formatedDate.toString();
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: 'DD / MM / YYY ',
                              hintStyle: TextStyle(
                                  color: AppColors.primaryColor.colors.first)),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  //padding: EdgeInsets.only(left: 50),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const Text(
                        "By continuing, you agree to ",
                        style: TextStyle(fontSize: 15, color: AppColors.black),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .22),
                        child: Row(
                          children: [
                            Text(
                              "Terms of us ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.primaryColor.colors.first),
                            ),
                            const Text(
                              " and ",
                              style: TextStyle(
                                  color: AppColors.black, fontSize: 15),
                            ),
                            Text(
                              " Privacy policy",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.primaryColor.colors.first),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    GenericFlexibleButton(
                        text: "Sign UP ",
                        minWidth: MediaQuery.of(context).size.width * .6,
                        minHeight: MediaQuery.of(context).size.height * .05,
                        fontSize: 20,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const VerifyYourAccountScreen()));
                        }),
                    const Text(
                      "or sign up with",
                      style: TextStyle(fontSize: 15, color: AppColors.black),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .37),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColors.primaryColor.colors.first,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              FontAwesomeIcons.google,
                              size: 20,
                              color: AppColors.white,
                            )),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                          radius: 25,
                          backgroundColor: AppColors.primaryColor.colors.first,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.facebook,
                                size: 25,
                                color: AppColors.white,
                              )))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .25),
                  child: Row(
                    children: [
                      const Text(
                        "Already Have Account",
                        style: TextStyle(color: AppColors.black, fontSize: 15),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: Text("Sign Up",
                              style: TextStyle(
                                  color: AppColors.primaryColor.colors.first,
                                  fontSize: 15)))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
