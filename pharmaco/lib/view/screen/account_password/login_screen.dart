import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/screen/account_password/reset_password_sccreen.dart';
import 'package:pharmaco/view/screen/account_password/signup_screen.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/email_input_widget.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';
import 'package:pharmaco/view/widget/password_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarr(title: "Log in"),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10),
            child: Column(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 50),
                    child: Text("Welcome",
                        style: TextStyle(
                            color: AppColors.primaryColor.colors.first,
                            fontSize: 22,
                            fontWeight: FontWeight.bold))),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 50, bottom: 10),
                        child: const Text("Email or Mobile Number",
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
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 50, bottom: 10),
                        child: Text("Password",
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 18,
                            ))),
                    PasswordWidget(),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ResetPasswordSccreen()));
                        },
                        child: Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.only(right: 30, bottom: 20),
                            child: Text("forget Password",
                                style: TextStyle(
                                  color: AppColors.primaryColor.colors.first,
                                  fontSize: 10,
                                ))))
                  ],
                ),
                Column(
                  children: [
                    GenericFlexibleButton(
                        text: "Log in ",
                        minWidth: MediaQuery.of(context).size.width * .6,
                        minHeight: MediaQuery.of(context).size.height * .05,
                        fontSize: 20,
                        onPressed: () {}),
                    Text(
                      "or sign up with",
                      style: TextStyle(fontSize: 15, color: AppColors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
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
                            icon: Icon(
                              FontAwesomeIcons.google,
                              size: 20,
                              color: AppColors.white,
                            )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                          radius: 25,
                          backgroundColor: AppColors.primaryColor.colors.first,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.facebook,
                                size: 25,
                                color: AppColors.white,
                              )))
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .25),
                  child: Row(
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: AppColors.black, fontSize: 15),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignupScreen()));
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
