import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartScreenGroceryTabView extends StatelessWidget {
  const CartScreenGroceryTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 180,
              child: SvgPicture.asset("assets/empty_cart.svg"),
            ),
            const SizedBox(height: 50),
            const Text(
              "Your basket is empty!",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Add items to it now.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text("Shop now"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
