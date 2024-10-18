import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/screen/cart_screen.dart';
import 'package:pharmaco/view/screen/contact_us_screen.dart';
import 'package:pharmaco/view/screen/favorite_screen.dart';
import 'package:pharmaco/view/screen/home_screen.dart';
import 'package:pharmaco/view/screen/register_or_profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, this.initialIndex = 0});
  final int initialIndex;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _selectedIndex;
  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex; // Use the passed index
  }

  // Screens to navigate between
  static final List<Widget> _screens = <Widget>[
    HomeScreen(),
    CartScreen(),
    FavoriteScreen(),
    RegisterOrProfileScreen(),
    ContactUsScreen()
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
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page), label: 'Contact Us')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryColor.colors.first,
        onTap: _onItemTapped,
      ),
    );
  }
}
