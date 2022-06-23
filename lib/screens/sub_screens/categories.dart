// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../widgets/category_page_divider.dart';
import '../../widgets/items/trending_stores_options.dart';
import '../../widgets/more_on_flipkart_options.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "All Categories",
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.mic),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // 1 : column of 5 Row (categories options)

            CategoryPageDivider(header: "More on FlipKart"),
            MoreOnFlipkartOptions(),
            CategoryPageDivider(header: "Trending Stores"),
            TrendingStoresOptions(),
            SizedBox(height: 64),
          ],
        ),
      ),
    );
  }
}
