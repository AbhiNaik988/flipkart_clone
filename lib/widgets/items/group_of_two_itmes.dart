import 'package:flipcart_ui/widgets/group_of_two_item.dart';
import 'package:flutter/material.dart';

import '../../models/group_of_x_item_model.dart';

class GroupOfTwoItems extends StatelessWidget {
  final GroupOfXItemModel itemModel;
  const GroupOfTwoItems({
    Key? key,
    required this.itemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.5),
        color: itemModel.backgroundColor,
      ),
      child: Row(
        children: itemModel.children
            .map(
              (item) => GroupOfTwoItem(item: item),
            )
            .toList(),
      ),
    );
  }
}
