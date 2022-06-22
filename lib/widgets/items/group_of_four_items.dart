import 'package:flipcart_ui/utils/globals.dart';
import 'package:flipcart_ui/widgets/group_of_four_item.dart';
import 'package:flutter/material.dart';

class GroupOfFourItems extends StatelessWidget {
  const GroupOfFourItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 445,
      margin: const EdgeInsets.symmetric(vertical: 3),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(136, 123, 178, 218),
        border: Border.all(
          color: Colors.grey,
          width: 0.3,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Discounts for You",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue[800],
                ),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.white,
                ),
              )
            ],
          ),
          GridView.builder(
            itemCount: groupOfFourProducts.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            itemBuilder: (context, index) {
              return GroupOfFourItem(
                itemModel: groupOfFourProducts[index],
              );
            },
          ),
        ],
      ),
    );
  }
}
