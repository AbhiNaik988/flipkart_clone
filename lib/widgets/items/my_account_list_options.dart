import 'package:flipcart_ui/models/my_account_list_model.dart';
import 'package:flipcart_ui/resources/my_account_list.dart';
import 'package:flutter/material.dart';

import '../my_account_list_option.dart';

class MyAccountListOptions extends StatelessWidget {
  const MyAccountListOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return MyAccountListOption(listItem: myAccountList[index]);
          },
          childCount: myAccountList.length,
        ),
      ),
    );
  }
}
