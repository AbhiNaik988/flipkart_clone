import 'package:flipcart_ui/screens/sub_screens/account.dart';
import 'package:flipcart_ui/screens/sub_screens/cart.dart';
import 'package:flipcart_ui/screens/sub_screens/categories.dart';
import 'package:flipcart_ui/screens/sub_screens/home.dart';
import 'package:flipcart_ui/screens/sub_screens/notification.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController pageController = PageController();
  int navTapIndex = 0;

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void _bottomNavigationTapped(int index) {
      setState(() {
        navTapIndex = index;
      });
      pageController.jumpToPage(index);
    }

    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          CategoriesScreen(),
          Home(),
          NotificationScreen(),
          AccountScreen(),
          CartScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        selectedIconTheme: const IconThemeData(color: Colors.blue),
        unselectedItemColor: Colors.grey,
        currentIndex: navTapIndex,
        unselectedFontSize: 12,
        selectedFontSize: 12,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: "Alerts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "Account"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
        ],
        onTap: (index) => _bottomNavigationTapped(index),
      ),
    );
  }
}
