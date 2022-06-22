import 'package:flipcart_ui/models/item_model.dart';
import 'package:flutter/material.dart';

class GroupOfFourItem extends StatelessWidget {
  final ItemModel itemModel;
  const GroupOfFourItem({
    Key? key,
    required this.itemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 7,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    itemModel.imgLocaion,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                  child: Text(
                    itemModel.text,
                    style: TextStyle(
                      color: itemModel.textColor,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                  child: Text(
                    itemModel.subText,
                    style: TextStyle(
                      color: itemModel.subTextColor,
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
