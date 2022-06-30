import 'package:flutter/material.dart';

import 'delegate.dart';

class HomeScreenGroceryTabBar extends StatelessWidget {
  const HomeScreenGroceryTabBar({
    Key? key,
    required this.groceryTabController,
  }) : super(key: key);

  final TabController groceryTabController;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: CommanDeligate(
        height: 30,
        child: Container(
          color: Colors.green,
          width: double.infinity,
          child: TabBar(
            controller: groceryTabController,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: const [
              FittedBox(child: Text("Home")),
              FittedBox(child: Text("Categories")),
              FittedBox(child: Text("Top Offers")),
              FittedBox(child: Text("What's New?")),
            ],
          ),
        ),
      ),
    );
  }
}
