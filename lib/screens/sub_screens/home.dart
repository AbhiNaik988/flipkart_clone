import 'package:flutter/material.dart';
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
        body: ListView(
          children: const [
            SearchBarHeader(),
            SizedBox(height: 5),
            HomeListOptions(),
            SizedBox(height: 5),
            ImageCarousel(),
            SizedBox(height: 5),
            GroupOfThreeItems(),
            SizedBox(height: 5),
            GroupOfFourItems(),
            SizedBox(height: 5),
            GroupOfTwoItems(),
          ],
        ),
      ),
    );
  }
}
