import 'package:flipcart_ui/resources/sub_resources/trending_stores_items_lists.dart';
import 'package:flutter/material.dart';

import '../trending_store_option.dart';

class TrendingStoresOptions extends StatelessWidget {
  const TrendingStoresOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return TrendingStoresOption(itemModel: trendingStoresItemsLN1[index]);
        },
      ),
    );
  }
}
