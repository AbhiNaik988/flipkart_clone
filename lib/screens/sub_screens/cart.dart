import 'package:flutter/material.dart';

import '../../widgets/cart_address_container.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200]!,
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              title: Text("My Cart"),
              floating: true,
            ),
            const CartAddressContainer(),
            SliverToBoxAdapter(
              key: const Key("cartitem"),
              child: Container(
                color: Colors.white,
                width: 200,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 50,
                                      child: Image.asset(
                                        "assets/powerbank.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    OutlinedButton.icon(
                                      style: ButtonStyle(
                                        side: MaterialStateProperty.all(
                                          const BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down_sharp,
                                        color: Colors.black,
                                      ),
                                      label: const Text(
                                        "Qty: 1",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 30,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text("Mi 30000 mAh Power Bank"),
                                      const SizedBox(height: 10),
                                      const Text("Black, Lithium Polymer"),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: const [
                                          Icon(Icons.star_outline),
                                          Icon(Icons.star_outline),
                                          Icon(Icons.star_outline),
                                          Icon(Icons.star_outline),
                                          Icon(Icons.star_outline),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      const Text("\$fsdfs2,699"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                            child: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Delivery by Tue Jun 28 |",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Free",
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            border: Border(
                              top: BorderSide(color: Colors.grey),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.save_alt_outlined),
                              SizedBox(width: 5),
                              Text("Save for later"),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            color: Colors.amber,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.delete),
                                SizedBox(width: 5),
                                Text("Remove"),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.amber,
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.cases_outlined),
                              SizedBox(width: 5),
                              Text("Buy this now"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //     ((context, index) {
            //       return Container(
            //         margin: const EdgeInsets.all(10),
            //         color: Colors.green,
            //         height: 50,
            //         width: double.infinity,
            //       );
            //     }),
            //     childCount: 10,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
