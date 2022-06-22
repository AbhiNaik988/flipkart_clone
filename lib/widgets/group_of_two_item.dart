import 'package:flipcart_ui/models/item_model.dart';
import 'package:flutter/material.dart';

class GroupOfTwoItem extends StatelessWidget {
  final ItemModel item;

  const GroupOfTwoItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 6,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                  child: Image.asset(
                    item.imgLocaion,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    item.text,
                    style: TextStyle(
                      color: item.textColor,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    item.subText,
                    style: TextStyle(
                      color: item.subTextColor,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    item.thirdText!,
                    style: TextStyle(
                      color: item.thirdTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
