import 'package:flipcart_ui/models/trending_stores_model.dart';
import 'package:flutter/material.dart';

class TrendingStoresOption extends StatelessWidget {
  final TrendingStoresItemModel itemModel;
  const TrendingStoresOption({
    Key? key,
    required this.itemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      decoration: BoxDecoration(
        color: itemModel.backgroundColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: itemModel.borderColor,
          width: 0.5,
        ),
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            width: double.infinity,
            height: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(
                      itemModel.titleText,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Flexible(
                      child: Icon(
                        Icons.chevron_right_sharp,
                        size: 30,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Text(
                    itemModel.subText,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              width: 165,
              height: 100,
              child: Image.asset(
                itemModel.imgLocation,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
