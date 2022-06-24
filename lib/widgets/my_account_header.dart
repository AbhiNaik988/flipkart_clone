import 'package:flutter/material.dart';

class MyAccountHeader extends StatelessWidget {
  const MyAccountHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      title: Text("My Account"),
      floating: true,
      elevation: 0,
      snap: false,
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
