import 'package:flipcart_ui/colors/colors.dart';
import 'package:flutter/material.dart';

import '../home_list_option.dart';

class HomeListOptions extends StatelessWidget {
  const HomeListOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 0.3,
          )),
      height: 120,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: index == items.length - 1
                ? const EdgeInsets.fromLTRB(8, 0, 8, 0)
                : const EdgeInsets.only(left: 8),
            child: HomeListOption(item: items[index]),
          );
        },
      ),
    );
  }
}
