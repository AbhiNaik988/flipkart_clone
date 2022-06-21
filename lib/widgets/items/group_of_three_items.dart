import 'package:flutter/material.dart';

import '../../utils/globals.dart';
import '../group_of_three_item.dart';

class GroupOfThreeItems extends StatelessWidget {
  const GroupOfThreeItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 0.3,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: groupOfThreeProducts
            .map((e) => GroupOfThreeItem(
                  item: e,
                ))
            .toList(),
      ),
    );
  }
}
