import 'package:flutter/material.dart';

import '../resources/resources.dart';
import 'home_screen_flipkart_search_bar.dart';
import 'items/group_of_four_items.dart';
import 'items/group_of_three_items.dart';
import 'items/group_of_two_itmes.dart';
import 'items/home_list_options.dart';
import 'items/image_carousol_item.dart';

class HomeScreenFlipkartView extends StatelessWidget {
  const HomeScreenFlipkartView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const HomeScreenFlipkartSearchBar(),
        SliverList(
          delegate: SliverChildListDelegate.fixed(
            [
              const HomeListOptions(),
              const SizedBox(height: 5),
              const ImageCarousel(),
              const SizedBox(height: 5),
              GroupOfThreeItems(itemModel: listGroupOfThreeProducts[0]),
              const SizedBox(height: 5),
              GroupOfFourItems(itemModel: listGroupOfFourProducts[0]),
              const SizedBox(height: 5),
              GroupOfTwoItems(itemModel: listGroupOfTwoProducts[0]),
              const SizedBox(height: 5),
              GroupOfFourItems(itemModel: listGroupOfFourProducts[1]),
              const SizedBox(height: 5),
              GroupOfTwoItems(itemModel: listGroupOfTwoProducts[1]),
              const SizedBox(height: 5),
              GroupOfThreeItems(itemModel: listGroupOfThreeProducts[1]),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ],
    );
  }
}
