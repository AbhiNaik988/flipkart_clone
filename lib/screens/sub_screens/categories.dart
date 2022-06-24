import 'package:flipcart_ui/widgets/category_page_divider.dart';
import 'package:flipcart_ui/widgets/items/more_on_flipkart_options.dart';
import 'package:flutter/material.dart';
import '../../widgets/categories_header.dart';
import '../../widgets/items/catogories_list.dart';
import '../../widgets/items/trending_stores_options.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            CategorieHeader(),
            CategoriesList(),
            SliverToBoxAdapter(
              key: Key("categoryPageDividerMoreonFlipkart"),
              child: CategoryPageDivider(header: "More on Flipkart"),
            ),
            MoreOnFlipkartOptions(),
            SliverToBoxAdapter(
              key: Key("categoryPageDividerTrendingStores"),
              child: CategoryPageDivider(header: "Trending Stores"),
            ),
            TrendingStoresOptions(),
          ],
        ),
      ),
    );
  }
}
