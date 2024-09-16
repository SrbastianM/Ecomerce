import 'package:eccommerce/pages/account/account_page.dart';
import 'package:eccommerce/pages/cart/cart_page.dart';
import 'package:eccommerce/pages/home/main_food_page.dart';
import 'package:eccommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List pages = [
    MainFoodPage(),
    CartPage(),
    AccountPage(),
  ];

  void onTapNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amberAccent,
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        unselectedItemColor: AppColors.mainColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: onTapNav,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "Car"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "User"),
        ],
      ),
    );
  }
}
