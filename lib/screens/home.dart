import 'package:flutter/material.dart';

import '../widgets/home_item.dart';
import '../widgets/search_bar_header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  final double _countainerWidth = 65;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SearchBarHeader(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  HomeItem(countainer_width: _countainerWidth),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
