import 'package:flipcart_ui/colors/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/home_item.dart';
import '../widgets/search_bar_header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SearchBarHeader(),
            Container(
              color: Colors.grey[200],
              height: 120,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: index == items.length - 1
                        ? const EdgeInsets.fromLTRB(8, 0, 8, 0)
                        : const EdgeInsets.only(left: 8),
                    child: HomeItem(item: items[index]),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
