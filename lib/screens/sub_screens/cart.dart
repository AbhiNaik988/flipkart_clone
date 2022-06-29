import 'package:flipcart_ui/widgets/cart_screen_tab_bar.dart';
import 'package:flutter/material.dart';
import '../../widgets/cart_screen_flipkart_tabbar_view.dart';
import '../../widgets/cart_screen_grocery_view.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NestedScrollView(
        controller: _scrollController,
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, boxIsScrolled) {
          return [
            const SliverAppBar(
              title: Text("My Cart"),
              floating: true,
            ),
            CartScreenTabBar(tabController: _tabController)
          ];
        },
        body: TabBarView(
          controller: _tabController,
          physics: NeverScrollableScrollPhysics(),
          children: const [
            CartScreenFlipkartTabView(),
            CartScreenGroceryTabView(),
          ],
        ),
      ),
    );
  }
}
