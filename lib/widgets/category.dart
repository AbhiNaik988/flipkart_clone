import 'package:flipcart_ui/models/categories_model.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final CategoryItem categoryItem;
  const Category({
    Key? key,
    required this.categoryItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            shape: BoxShape.circle,
          ),
          child: Center(
              child: Icon(
            categoryItem.categoryIcon,
            color: Colors.blue,
            size: 35,
          )),
        ),
        Flexible(
          child: Text(
            categoryItem.categoryName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}
