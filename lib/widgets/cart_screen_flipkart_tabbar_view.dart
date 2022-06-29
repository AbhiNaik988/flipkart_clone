import 'package:flipcart_ui/widgets/place_order_tile.dart';
import 'package:flipcart_ui/widgets/price_detail_tile.dart';
import 'package:flutter/material.dart';
import 'cart_address_container.dart';
import 'items/cart_items.dart';

class CartScreenFlipkartTabView extends StatelessWidget {
  const CartScreenFlipkartTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          CartAddressContainer(),
          CartItemsList(),
          PriceDetailTile(),
        ],
      ),
      bottomSheet: PlaceOrderTile(),
    );
  }
}
