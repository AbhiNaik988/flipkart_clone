import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Notifications",
          style: TextStyle(
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(40, 10, 0, 10),
              width: 150,
              height: 200,
              child: Image.asset(
                "assets/notification.png",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                "No notification yet",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            const Text(
              "Simply browse, create a wishlist",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: const Text(
                "or make a purchase",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            ElevatedButton(
              child: const Text("Continue Shopping"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
