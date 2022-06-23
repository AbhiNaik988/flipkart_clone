import 'package:flutter/material.dart';

import '../colors/colors.dart';
import 'home_list_option.dart';

class MoreOnFlipkartOptions extends StatelessWidget {
  const MoreOnFlipkartOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemBuilder: (context, index) {
          return HomeListOption(item: items[index]);
        },
      ),
    );
  }
}
