import 'package:flipcart_ui/utils/globals.dart';
import 'package:flutter/material.dart';
import '../widgets/home_list_itmes.dart';
import '../widgets/image_carousol.dart';
import '../widgets/search_bar_header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: const [
            SearchBarHeader(),
            HomeListItems(),
            ImageCarousel(),
          ],
        ),
      ),
    );
  }
}
