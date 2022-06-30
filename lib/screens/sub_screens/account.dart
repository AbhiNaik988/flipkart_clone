import 'package:flipcart_ui/providers/authentication_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../widgets/items/my_account_list_options.dart';
import '../../widgets/my_account_expanded_header.dart';
import '../../widgets/my_account_header.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    bool isAuthenticated =
        Provider.of<AuthenticationProvider>(context).isUserAuthenticated;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: isAuthenticated
            ? CustomScrollView(
                slivers: [
                  const MyAccountHeader(),
                  const MyAccountExpandedHeader(),
                  MyAccountListOptions(isAuthenticated: isAuthenticated),
                  MyAccountBelowListOptions(isAuthenticated: isAuthenticated),
                ],
              )
            : CustomScrollView(
                slivers: [
                  const MyAccountHeader(),
                  MyAccountListOptions(isAuthenticated: isAuthenticated),
                  MyAccountBelowListOptions(isAuthenticated: isAuthenticated),
                ],
              ),
      ),
    );
  }
}
