import 'package:flipcart_ui/utils/globals.dart';
import 'package:flutter/material.dart';

import '../group_of_two_item.dart';

class GroupOfTwoItems extends StatelessWidget {
  const GroupOfTwoItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.5),
        color: Colors.white,
      ),
      child: Row(
        children: [
          GroupOfTwoItem(item: groupOfTwoProducts[0]),
          GroupOfTwoItem(item: groupOfTwoProducts[1]),
        ],
      ),
    );
  }
}
