import 'dart:ui';

class ItemModel {
  final String imgLocaion;
  final String text;
  final Color? textColor;
  final String subText;
  final Color? subTextColor;
  final String? thirdText;
  final Color? thirdTextColor;

  ItemModel({
    required this.imgLocaion,
    required this.text,
    required this.textColor,
    required this.subText,
    required this.subTextColor,
    this.thirdText,
    this.thirdTextColor,
  });
}
