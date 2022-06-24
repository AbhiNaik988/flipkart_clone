import 'package:flutter/material.dart';
import '../../widgets/items/my_account_list_options.dart';
import '../../widgets/my_account_expanded_header.dart';
import '../../widgets/my_account_header.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: const CustomScrollView(
          slivers: [
            MyAccountHeader(),
            MyAccountExpandedHeader(),
            MyAccountListOptions(),
          ],
        ),
      ),
    );
  }
}
