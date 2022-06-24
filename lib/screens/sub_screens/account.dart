import 'package:flutter/material.dart';
import '../../widgets/my_account_expanded_header.dart';
import '../../widgets/my_account_header.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: CustomScrollView(
          slivers: [
            const MyAccountHeader(),
            const MyAccountExpandedHeader(),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: Text(index.toString()),
                  );
                },
                childCount: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
