import 'package:flutter/material.dart';

import 'home_screen_grocery_search_bar.dart';
import 'home_screen_grocery_tab_bar.dart';

class HomeScreenGroceryView extends StatefulWidget {
  const HomeScreenGroceryView({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreenGroceryView> createState() => _HomeScreenGroceryViewState();
}

class _HomeScreenGroceryViewState extends State<HomeScreenGroceryView>
    with TickerProviderStateMixin {
  late TabController groceryTabController;

  @override
  void initState() {
    super.initState();
    groceryTabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    groceryTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const HomeScreenGrocerySearchBar(),
        HomeScreenGroceryTabBar(groceryTabController: groceryTabController),
        SliverFillRemaining(
          fillOverscroll: true,
          child: TabBarView(
            controller: groceryTabController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              Text("one"),
              Text("two"),
              Text("three"),
              Text("four"),
            ],
          ),
        ),
      ],
    );
  }
}
