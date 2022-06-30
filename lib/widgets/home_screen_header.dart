import 'package:flutter/material.dart';

import 'delegate.dart';

class HomeScreenHeader extends StatefulWidget {
  const HomeScreenHeader({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  State<HomeScreenHeader> createState() => _HomeScreenHeaderState();
}

class _HomeScreenHeaderState extends State<HomeScreenHeader> {
  bool isGroceryTab = false;
  bool isFlipkartTab = false;

  @override
  Widget build(BuildContext context) {
    void _onTabChanged(int tabNumber) {
      if (tabNumber == 0) {
        setState(() {
          isFlipkartTab = true;
          isGroceryTab = false;
        });
      } else {
        setState(() {
          isGroceryTab = true;
          isFlipkartTab = false;
        });
      }
    }

    return SliverPersistentHeader(
      pinned: false,
      floating: true,
      delegate: CommanDeligate(
        height: 50,
        child: TabBar(
          controller: widget._tabController,
          indicator: const BoxDecoration(),
          labelPadding: const EdgeInsets.all(0),
          indicatorWeight: 0,
          onTap: (tabNumber) => _onTabChanged(tabNumber),
          tabs: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: isGroceryTab
                    ? const Border(
                        bottom: BorderSide(
                          color: Colors.white,
                        ),
                        right: BorderSide(
                          color: Colors.white,
                        ),
                      )
                    : const Border(
                        top: BorderSide(
                          color: Colors.white,
                        ),
                        right: BorderSide(
                          color: Colors.white,
                        ),
                      ),
              ),
              child: const Center(
                child: Text(
                  "Flipkart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                border: isGroceryTab
                    ? const Border(
                        left: BorderSide(
                          color: Colors.white,
                        ),
                        top: BorderSide(
                          color: Colors.white,
                        ),
                      )
                    : const Border(
                        left: BorderSide(
                          color: Colors.white,
                        ),
                        bottom: BorderSide(
                          color: Colors.white,
                        ),
                      ),
              ),
              child: const Center(
                child: Text(
                  "Grocery",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
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
