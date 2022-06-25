import 'package:flipcart_ui/widgets/delegate.dart';
import 'package:flutter/material.dart';

class CartScreenTabBar extends StatefulWidget {
  const CartScreenTabBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CartScreenTabBar> createState() => _CartScreenTabBarState();
}

class _CartScreenTabBarState extends State<CartScreenTabBar> {
  bool flipkartBottomBar = true;
  bool groceryBottomBar = false;
  void setFlipkartBottomBar() {
    setState(() {
      flipkartBottomBar = true;
      groceryBottomBar = false;
    });
  }

  void setGroceryBottomBar() {
    setState(() {
      groceryBottomBar = true;
      flipkartBottomBar = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: CommanDeligate(
        child: Container(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[300]!,
                width: 1,
              ),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () => setFlipkartBottomBar(),
                  child: Container(
                    decoration: BoxDecoration(
                      border: flipkartBottomBar
                          ? const Border(
                              bottom: BorderSide(
                                color: Colors.blue,
                                width: 3,
                              ),
                            )
                          : const Border(),
                    ),
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Center(
                      child: Text(
                        "Flipkart (3)",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: flipkartBottomBar ? Colors.blue : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () => setGroceryBottomBar(),
                  child: Container(
                    decoration: BoxDecoration(
                      border: groceryBottomBar
                          ? const Border(
                              bottom: BorderSide(
                                color: Colors.blue,
                                width: 3,
                              ),
                            )
                          : const Border(),
                    ),
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Center(
                      child: Text(
                        "Grocery",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: groceryBottomBar ? Colors.blue : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        height: 55,
      ),
    );
  }
}
