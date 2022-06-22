import 'dart:ui';

import 'package:flipcart_ui/models/item_model.dart';

class GroupOfXItemModel {
  final String title;
  final Color? backgroundColor;
  final List<ItemModel> children;

  GroupOfXItemModel({
    required this.title,
    required this.backgroundColor,
    required this.children,
  });
}
