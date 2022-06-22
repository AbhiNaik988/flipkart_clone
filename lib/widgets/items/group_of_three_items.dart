import 'package:flipcart_ui/models/group_of_x_item_model.dart';
import 'package:flutter/material.dart';

import '../group_of_three_item.dart';

class GroupOfThreeItems extends StatelessWidget {
  final GroupOfXItemModel itemModel;
  const GroupOfThreeItems({
    Key? key,
    required this.itemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
        color: itemModel.backgroundColor,
        border: Border.all(
          color: Colors.grey,
          width: 0.3,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: itemModel.children
            .map((e) => GroupOfThreeItem(
                  item: e,
                ))
            .toList(),
      ),
    );
  }
}
