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
      height: itemModel.title.isEmpty ? 150 : 180,
      decoration: BoxDecoration(
        color: itemModel.backgroundColor,
        border: Border.all(
          color: Colors.grey,
          width: 0.3,
        ),
      ),
      child: Column(
        mainAxisAlignment: itemModel.title.isEmpty
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceEvenly,
        children: [
          itemModel.title.isEmpty
              ? Container()
              : Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  color: Colors.white,
                  width: double.infinity,
                  height: 30,
                  child: Text(
                    itemModel.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: itemModel.children
                .map((e) => GroupOfThreeItem(
                      item: e,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
