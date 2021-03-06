import 'package:flipcart_ui/widgets/delegate.dart';
import 'package:flutter/material.dart';

class HomeScreenFlipkartSearchBar extends StatelessWidget {
  const HomeScreenFlipkartSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: CommanDeligate(
        height: 60,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).primaryColor,
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 210,
                        child: Text(
                          "Search for Products, Brands and so much more... ",
                          style: TextStyle(
                            color: Colors.grey,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
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
        ),
      ),
    );
  }
}
