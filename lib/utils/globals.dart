import 'package:flipcart_ui/models/item_model.dart';
import 'package:flutter/material.dart';

const List<String> adImageList = [
  "assets/flipkart_ad_img_1.png",
  "assets/flipkart_ad_img_2.png",
  "assets/flipkart_ad_img_3.jpeg",
  "assets/flipkart_ad_img_4.jpeg",
  "assets/flipkart_ad_img_5.jpeg",
];

final List<ItemModel> groupOfThreeProducts = [
  ItemModel(
    imgLocaion: "assets/realme_c30.jpg",
    text: "Sale on 27th June",
    subText: "realme C30 From \$7,499",
    textColor: Colors.black,
    subTextColor: Colors.grey,
  ),
  ItemModel(
    imgLocaion: "assets/boat_speakers.jpg",
    text: "Just \$799",
    subText: "Grenade Speakers",
    textColor: Colors.black,
    subTextColor: Colors.grey,
  ),
  ItemModel(
    imgLocaion: "assets/smart_watch.jpg",
    text: "Sale Is Live",
    subText: "Bluetooth Calling",
    textColor: Colors.black,
    subTextColor: Colors.grey,
  ),
];

final List<ItemModel> groupOfFourProducts = [
  ItemModel(
    imgLocaion: "assets/beard_oil.jpg",
    text: "Beard Oil",
    textColor: Colors.black,
    subText: "Min. 50% Off",
    subTextColor: Colors.green,
  ),
  ItemModel(
    imgLocaion: "assets/deodorant_roll_ons.jpg",
    text: "Deodorant Roll-ons",
    textColor: Colors.black,
    subText: "Min. 10% Off",
    subTextColor: Colors.green,
  ),
  ItemModel(
    imgLocaion: "assets/trimmer.jpg",
    text: "Trimmers",
    textColor: Colors.black,
    subText: "Min. 50% Off",
    subTextColor: Colors.green,
  ),
  ItemModel(
    imgLocaion: "assets/laptop_bag.jpg",
    text: "Laptop Bags",
    textColor: Colors.black,
    subText: "Min. 50% Off",
    subTextColor: Colors.green,
  ),
];
