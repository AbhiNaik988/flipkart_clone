class CartItem {
  final String productName;
  final String productDesc;
  final int productRating;
  final int numberOfBuyers;
  final int productPrice;
  final int numberOfOffersAvailable;
  final String deliveryDate;
  final bool isDelveryFree;
  final int deliveryFee;
  final String productImg;

  CartItem({
    required this.productName,
    required this.productDesc,
    required this.productRating,
    required this.numberOfBuyers,
    required this.productPrice,
    required this.numberOfOffersAvailable,
    required this.deliveryDate,
    required this.isDelveryFree,
    required this.deliveryFee,
    required this.productImg,
  });
}
