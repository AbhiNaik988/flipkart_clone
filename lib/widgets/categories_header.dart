import 'package:flutter/material.dart';

class CategorieHeader extends StatelessWidget {
  const CategorieHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      floating: true,
      title: Text("All Categories"),
      elevation: 0,
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Icon(Icons.search),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Icon(Icons.mic),
        ),
      ],
    );
  }
}
