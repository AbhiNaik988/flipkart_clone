import 'package:flipcart_ui/models/my_account_list_model.dart';
import 'package:flipcart_ui/providers/authentication_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyAccountListOption extends StatelessWidget {
  final MyAccountListItem listItem;
  const MyAccountListOption({
    Key? key,
    required this.listItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthenticationProvider _provider =
        Provider.of<AuthenticationProvider>(context);

    void onClickedTrailingText(int listItemId) {
      switch (listItemId) {
        case 1:
          _provider.setAuthentiated();
          break;
      }
    }

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 7,
        horizontal: 10,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            color: Colors.grey[400]!,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    listItem.title,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                listItem.hasCorrespondtitle
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Text(
                          listItem.correspondtitle,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            listItem.hasSubtitle
                ? Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child: Text(
                      listItem.subtitle,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  )
                : Container(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Divider(
                color: Colors.grey,
                thickness: 0.4,
                height: 2,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: InkWell(
                onTap: () => onClickedTrailingText(listItem.listId),
                child: Text(
                  listItem.trailingText,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyAccountBelowListItems extends StatelessWidget {
  final MyAccountBelowListItem listItem;
  const MyAccountBelowListItems({
    Key? key,
    required this.listItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthenticationProvider provider =
        Provider.of<AuthenticationProvider>(context);

    onClickBelowListItemText(int listId) {
      switch (listId) {
        case 7:
          provider.setUnauthenticate();
          break;
      }
    }

    return Container(
      margin: listItem.hasMarginBelow
          ? const EdgeInsets.only(bottom: 10)
          : const EdgeInsets.all(0),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 0.3,
        ),
      ),
      child: Row(
        children: [
          listItem.hasLeadingIcon
              ? Icon(
                  listItem.icon,
                  color: Colors.grey[600],
                )
              : Container(),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: InkWell(
              onTap: () => onClickBelowListItemText(listItem.listId),
              child: Text(
                listItem.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
