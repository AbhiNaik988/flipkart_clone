import 'package:flipcart_ui/resources/cart_items.dart';
import 'package:flipcart_ui/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return SingleCartItem(cartItem: cartItems[index]);
        },
        childCount: cartItems.length,
      ),
    );
  }
}
