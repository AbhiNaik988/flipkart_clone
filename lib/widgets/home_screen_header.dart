import 'package:flipcart_ui/widgets/persistent_header.dart';
import 'package:flutter/material.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: false,
      floating: true,
      delegate: PersistentHeader(
        widget: Row(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  border: Border(
                    top: BorderSide(
                      color: Colors.white,
                    ),
                    right: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Flipkart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.green,
                  border: Border(
                    left: BorderSide(
                      color: Colors.white,
                    ),
                    bottom: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Grocery",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
