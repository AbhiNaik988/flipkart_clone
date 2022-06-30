import 'package:flutter/material.dart';

import 'delegate.dart';

class CartScreenTabBar extends StatelessWidget {
  const CartScreenTabBar({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: true,
      delegate: CommanDeligate(
        height: 60,
        child: Container(
          color: Colors.white,
          child: TabBar(
            controller: _tabController,
            tabs: const [
              Text(
                "Flipkart (3)",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Grocery",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
