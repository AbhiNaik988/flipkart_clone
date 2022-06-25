import 'package:flipcart_ui/models/cart_item_model.dart';
import 'package:flutter/material.dart';

class SingleCartItem extends StatelessWidget {
  final CartItem cartItem;
  const SingleCartItem({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      color: Colors.white,
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
                            height: 100,
                            child: Image.asset(
                              cartItem.productImg,
                              fit: BoxFit.fitWidth,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cartItem.productName,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              cartItem.productDesc,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                cartItem.productRating >= 1
                                    ? const Icon(
                                        Icons.star,
                                        color: Colors.green,
                                      )
                                    : const Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.grey,
                                      ),
                                cartItem.productRating >= 2
                                    ? const Icon(
                                        Icons.star,
                                        color: Colors.green,
                                      )
                                    : const Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.grey,
                                      ),
                                cartItem.productRating >= 3
                                    ? const Icon(
                                        Icons.star,
                                        color: Colors.green,
                                      )
                                    : const Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.grey,
                                      ),
                                cartItem.productRating >= 4
                                    ? const Icon(
                                        Icons.star,
                                        color: Colors.green,
                                      )
                                    : const Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.grey,
                                      ),
                                cartItem.productRating == 5
                                    ? const Icon(
                                        Icons.star,
                                        color: Colors.green,
                                      )
                                    : const Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.grey,
                                      ),
                                const SizedBox(width: 5),
                                Text(
                                  "(${cartItem.numberOfBuyers})",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "\$${cartItem.productPrice}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "${cartItem.numberOfOffersAvailable} offers available",
                              style: const TextStyle(
                                color: Colors.green,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Delivery by ${cartItem.deliveryDate} |",
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        cartItem.isDelveryFree
                            ? const TextSpan(
                                text: " Free",
                                style: TextStyle(
                                  color: Colors.green,
                                ),
                              )
                            : TextSpan(
                                text:
                                    " Delivery Charges \$${cartItem.deliveryFee}",
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.save_alt_outlined,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 5),
                        Text("Save for later"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey[400]!),
                        right: BorderSide(color: Colors.grey[400]!),
                        bottom: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.delete,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 5),
                        Text("Remove"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey[400]!),
                        right: BorderSide(color: Colors.grey[400]!),
                        bottom: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.cases_outlined,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 5),
                        Text("Buy this now"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
