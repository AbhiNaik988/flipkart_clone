import 'package:flipcart_ui/widgets/persistent_header.dart';
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
      delegate: PersistentHeader(
        widget: const SearchBarHeader(),
      ),
    );
  }
}
