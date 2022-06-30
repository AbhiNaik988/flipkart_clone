import 'package:flipcart_ui/resources/my_account_list.dart';
import 'package:flutter/material.dart';

import '../my_account_list_option.dart';

class MyAccountListOptions extends StatelessWidget {
  final bool isAuthenticated;
  const MyAccountListOptions({
    Key? key,
    required this.isAuthenticated,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return MyAccountListOption(
                listItem: isAuthenticated
                    ? myAuthenticatedAccountList[index]
                    : myUnauthenticatedAccountList[index]);
          },
          childCount: isAuthenticated
              ? myAuthenticatedAccountList.length
              : myUnauthenticatedAccountList.length,
        ),
      ),
    );
  }
}

class MyAccountBelowListOptions extends StatelessWidget {
  final bool isAuthenticated;
  const MyAccountBelowListOptions({
    Key? key,
    required this.isAuthenticated,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return MyAccountBelowListItems(
            listItem: isAuthenticated
                ? belowAuthenticatedListItems[index]
                : belowUnauthenticatedListItems[index],
          );
        },
        childCount: isAuthenticated
            ? belowAuthenticatedListItems.length
            : belowUnauthenticatedListItems.length,
      ),
    );
  }
}
