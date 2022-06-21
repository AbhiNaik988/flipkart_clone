import 'package:flipcart_ui/screens/account.dart';
import 'package:flipcart_ui/screens/cart.dart';
import 'package:flipcart_ui/screens/categories.dart';
import 'package:flipcart_ui/screens/home.dart';
import 'package:flipcart_ui/screens/notification.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          Home(),
          CategoriesScreen(),
          NotificationScreen(),
          AccountScreen(),
          CartScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        selectedIconTheme: const IconThemeData(color: Colors.blue),
        unselectedItemColor: Colors.black,
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
