import 'package:flutter/material.dart';

class HomeScreenPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  final Widget widget;

  HomeScreenPersistentHeaderDelegate({required this.widget});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: Card(
        margin: const EdgeInsets.all(0),
        color: Colors.blue,
        elevation: 0,
        child: Center(child: widget),
      ),
    );
  }

  @override
  double get maxExtent => 50.0;

  @override
  double get minExtent => 50.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class AccountScreenPresistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  final Widget widget;
  final double height;

  AccountScreenPresistentHeaderDelegate(
      {required this.widget, required this.height});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: Container(
        child: widget,
      ),
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
