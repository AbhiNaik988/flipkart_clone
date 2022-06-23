import 'package:flipcart_ui/resources/resources.dart';
import 'package:flipcart_ui/widgets/items/group_of_four_items.dart';
import 'package:flipcart_ui/widgets/items/group_of_three_items.dart';
import 'package:flipcart_ui/widgets/items/group_of_two_itmes.dart';
import 'package:flipcart_ui/widgets/items/home_list_options.dart';
import 'package:flipcart_ui/widgets/items/image_carousol_item.dart';
import 'package:flipcart_ui/widgets/items/search_bar_item.dart';
import 'package:flutter/material.dart';

class Temp extends StatelessWidget {
  const Temp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchBarHeader(),
        Expanded(
          child: ListView(
            children: [
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
