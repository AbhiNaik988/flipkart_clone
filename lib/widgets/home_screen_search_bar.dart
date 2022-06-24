import 'package:flipcart_ui/widgets/delegate.dart';
import 'package:flutter/material.dart';

import 'items/search_bar_item.dart';

class HomeScreenSearchBar extends StatelessWidget {
  const HomeScreenSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: CommanDeligate(
        height: 60,
        child: const SearchBarHeader(),
      ),
    );
  }
}
