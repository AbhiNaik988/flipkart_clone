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
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            // 1 : column of 5 Row (categories options)
            Padding(
              padding: const EdgeInsets.all(15),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 18,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.blue,
                  );
                },
              ),
            ),
            const CategoryPageDivider(header: "More on FlipKart"),
            const MoreOnFlipkartOptions(),
            const CategoryPageDivider(header: "Trending Stores"),
            const TrendingStoresOptions(),
          ],
        ),
      ),
    );
  }
}
