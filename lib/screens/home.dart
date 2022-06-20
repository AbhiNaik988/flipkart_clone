import 'package:flutter/material.dart';

import '../widgets/search_bar_header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SearchBarHeader(),
      ),
    );
  }
}
