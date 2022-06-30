import 'package:flutter/material.dart';

import 'delegate.dart';

class HomeScreenGrocerySearchBar extends StatelessWidget {
  const HomeScreenGrocerySearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: CommanDeligate(
        height: 60,
        child: Container(
          color: Colors.green,
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(3)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                const Center(
                  child: Text(
                    "Search grocery products",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[100],
                  child: const Icon(
                    Icons.mic,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
