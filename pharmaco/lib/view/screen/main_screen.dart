import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/screen/contact_us_screen.dart';
import 'package:pharmaco/view/screen/help_center.dart';
import 'package:pharmaco/view/screen/payment_success_screen.dart';
import 'package:pharmaco/view/screen/privacy_policy_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  // Screens to navigate between
  static final List<Widget> _screens = <Widget>[
    const PaymentSuccessScreen(),
    const PrivacyPolicyScreen(),
    const ContactUsScreen(),
    const HelpCenterScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryColor.colors.first,
        onTap: _onItemTapped,
      ),
    );
  }
}
