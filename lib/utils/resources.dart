import 'package:flutter/material.dart';

import '../models/group_of_x_item_model.dart';
import 'sub_resource.dart';

final List<GroupOfXItemModel> listGroupOfFourProducts = [
  GroupOfXItemModel(
    title: "Discounts for You",
    backgroundColor: const Color.fromARGB(136, 123, 178, 218),
    children: groupOfFourProductsLN1,
  ),
  GroupOfXItemModel(
    title: "Suggested Only for You",
    backgroundColor: const Color.fromARGB(135, 235, 245, 162),
    children: groupOfFourProductsLN1,
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
    children: groupOfThreeProductsLN1,
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
    children: groupOfTwoProductsLN1,
  ),
];
