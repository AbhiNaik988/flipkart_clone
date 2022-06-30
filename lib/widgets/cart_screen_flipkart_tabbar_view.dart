import 'package:flipcart_ui/providers/authentication_provider.dart';
import 'package:flipcart_ui/widgets/place_order_tile.dart';
import 'package:flipcart_ui/widgets/price_detail_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'cart_address_container.dart';
import 'items/cart_items.dart';

class CartScreenFlipkartTabView extends StatelessWidget {
  const CartScreenFlipkartTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthenticationProvider provider =
        Provider.of<AuthenticationProvider>(context);

    return Scaffold(
      body: provider.isUserAuthenticated
          ? const CustomScrollView(
              slivers: [
                CartAddressContainer(),
                CartItemsList(),
                PriceDetailTile(),
              ],
            )
          : Scaffold(
              backgroundColor: Colors.grey[100],
              body: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 180,
                      child: SvgPicture.asset("assets/empty_cart.svg"),
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      "Missing Cart items?",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Login to see the items you added previously",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () => provider.setAuthentiated(),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                        ),
                        child: Text("Login"),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Continue Shopping"),
                    ),
                  ],
                ),
              ),
            ),
      bottomSheet: provider.isUserAuthenticated ? const PlaceOrderTile() : null,
    );
  }
}
