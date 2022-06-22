import 'package:flipcart_ui/resources/sub_resources/group_of_four_lists.dart';
import 'package:flipcart_ui/resources/sub_resources/group_of_three_lists.dart';
import 'package:flipcart_ui/resources/sub_resources/group_of_two_lists.dart';
import 'package:flutter/material.dart';

import '../models/group_of_x_item_model.dart';

final List<GroupOfXItemModel> listGroupOfFourProducts = [
  GroupOfXItemModel(
    title: "Discounts for You",
    backgroundColor: const Color.fromARGB(136, 123, 178, 218),
    children: groupOfFourProductsLN1,
  ),
  GroupOfXItemModel(
    title: "On Everybody's List",
    backgroundColor: const Color.fromARGB(135, 235, 245, 162),
    children: groupOfFourProductsLN2,
  ),
];

final List<GroupOfXItemModel> listGroupOfThreeProducts = [
  GroupOfXItemModel(
    title: "Sponsored",
    backgroundColor: Colors.white,
    children: groupOfThreeProductsLN1,
  ),
  GroupOfXItemModel(
    title: "",
    backgroundColor: Colors.white,
    children: groupOfThreeProductsLN2,
  ),
];

final List<GroupOfXItemModel> listGroupOfTwoProducts = [
  GroupOfXItemModel(
    title: "",
    backgroundColor: Colors.white,
    children: groupOfTwoProductsLN1,
  ),
  GroupOfXItemModel(
    title: "",
    backgroundColor: Colors.white,
    children: groupOfTwoProductsLN2,
  ),
];

const List<String> adImageList = [
  "assets/flipkart_ad_img_1.png",
  "assets/flipkart_ad_img_2.png",
  "assets/flipkart_ad_img_3.jpeg",
  "assets/flipkart_ad_img_4.jpeg",
  "assets/flipkart_ad_img_5.jpeg",
];
