import 'package:flutter/material.dart';

import '../../colors/colors.dart';
import '../home_list_option.dart';

class MoreOnFlipkartOptions extends StatelessWidget {
  const MoreOnFlipkartOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return HomeListOption(item: items[index]);
          },
          childCount: items.length,
        ),
      ),
    );
  }
}
