import 'package:flutter/cupertino.dart';

class MyAccountListItem {
  final String title;
  final bool hasCorrespondtitle;
  final String correspondtitle;
  final bool hasSubtitle;
  final String subtitle;
  final String trailingText;

  MyAccountListItem({
    required this.title,
    required this.hasCorrespondtitle,
    required this.correspondtitle,
    required this.subtitle,
    required this.hasSubtitle,
    required this.trailingText,
  });
}

class MyAccountBelowListItem {
  final String title;
  final bool hasLeadingIcon;
  final bool hasMarginBelow;
  final IconData? icon;

  MyAccountBelowListItem({
    required this.title,
    required this.hasLeadingIcon,
    required this.hasMarginBelow,
    required this.icon,
  });
}
