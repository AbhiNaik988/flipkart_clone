import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "All Categories",
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.mic),
          SizedBox(width: 10),
        ],
      ),
      body: const Center(
        child: Text("Categories"),
      ),
    );
  }
}
