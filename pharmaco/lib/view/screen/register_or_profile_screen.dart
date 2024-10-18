import 'package:flutter/material.dart';
import 'package:pharmaco/view/screen/account_password/register_screen.dart';
import 'package:pharmaco/view/screen/profile/profile_screen.dart';

// ignore: must_be_immutable
class RegisterOrProfileScreen extends StatelessWidget {
  RegisterOrProfileScreen({super.key});
  bool isLogin = true;
  void changeState() {
    isLogin = !isLogin;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLogin ? ProfileScreen() : RegisterScreen(),
    );
  }
}
