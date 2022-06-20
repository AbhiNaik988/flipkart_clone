import 'package:flutter/material.dart';

class SearchBarHeader extends StatelessWidget {
  const SearchBarHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[700],
      padding: const EdgeInsets.fromLTRB(0, 10, 15, 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 5),
          SizedBox(
            width: 45,
            height: 45,
            child: Image.asset("assets/flipkart_img.png"),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(3)),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  const Text(
                    "Search for Products, Brands and Deals",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.blue[100]),
                    padding: const EdgeInsets.all(10),
                    child: Icon(
                      Icons.mic,
                      color: Colors.blue[700],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
