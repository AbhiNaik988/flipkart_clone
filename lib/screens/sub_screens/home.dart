import 'package:flutter/material.dart';
import '../../resources/resources.dart';
import '../../widgets/items/group_of_four_items.dart';
import '../../widgets/items/group_of_three_items.dart';
import '../../widgets/items/group_of_two_itmes.dart';
import '../../widgets/items/home_list_options.dart';
import '../../widgets/items/image_carousol_item.dart';
import '../../widgets/items/search_bar_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            const SearchBarHeader(),
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(height: 5),
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
        ),
      ),
    );
  }
}
