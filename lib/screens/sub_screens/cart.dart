import 'package:flutter/material.dart';

import '../../widgets/cart_address_container.dart';
import '../../widgets/items/cart_items.dart';
import '../../widgets/place_order_tile.dart';
import '../../widgets/price_detail_tile.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200]!,
        body: const CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text("My Cart"),
              floating: true,
            ),
            CartAddressContainer(),
            CartItemsList(),
            PriceDetailTile(),
            PlaceOrderTile(),
          ],
        ),
      ),
    );
  }
}
