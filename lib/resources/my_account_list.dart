import 'package:flipcart_ui/models/my_account_list_model.dart';
import 'package:flutter/material.dart';

final List<MyAccountListItem> myUnauthenticatedAccountList = [
  MyAccountListItem(
    title: "My Account",
    hasCorrespondtitle: false,
    correspondtitle: "",
    subtitle: "",
    hasSubtitle: false,
    trailingText: "Sign in",
  ),
  MyAccountListItem(
    title: "Choose Language",
    hasCorrespondtitle: true,
    correspondtitle: "English",
    subtitle: "",
    hasSubtitle: false,
    trailingText: "CHOOSE LANGUAGE",
  ),
  MyAccountListItem(
    title: "My Whishlist",
    hasCorrespondtitle: false,
    correspondtitle: "",
    subtitle: "",
    hasSubtitle: false,
    trailingText: "VIEW YOUR WHISHILST",
  ),
];

final List<MyAccountListItem> myAuthenticatedAccountList = [
  MyAccountListItem(
    title: "Flipkart Plus",
    hasCorrespondtitle: false,
    correspondtitle: "",
    subtitle: "",
    hasSubtitle: false,
    trailingText: "VIEW PLUS ZONE",
  ),
  MyAccountListItem(
    title: "My Orders",
    hasCorrespondtitle: false,
    correspondtitle: "",
    subtitle: "",
    hasSubtitle: false,
    trailingText: "VIEW ALL ORDERS",
  ),
  MyAccountListItem(
    title: "Choose Language",
    hasCorrespondtitle: true,
    correspondtitle: "English",
    subtitle: "",
    hasSubtitle: false,
    trailingText: "CHOOSE LANGUAGE",
  ),
  MyAccountListItem(
    title: "My Whishlist",
    hasCorrespondtitle: false,
    correspondtitle: "",
    subtitle: "",
    hasSubtitle: false,
    trailingText: "VIEW YOUR WHISHILST",
  ),
  MyAccountListItem(
    title: "Flipkart Pay Later",
    hasCorrespondtitle: false,
    correspondtitle: "",
    subtitle: "Instant credit upto Rs 1 Lakh for all your shopping needs",
    hasSubtitle: true,
    trailingText: "APPLY NOW",
  ),
  MyAccountListItem(
    title: "Flipkart Creator Studio",
    hasCorrespondtitle: false,
    correspondtitle: "",
    subtitle:
        "Explore Flipkart Creator Studio, konw how to share your favourite products with your followers & earn moeny!",
    hasSubtitle: true,
    trailingText: "VIEW YOUR STUDIO",
  ),
  MyAccountListItem(
    title: "My Cards & Wallet",
    hasCorrespondtitle: true,
    correspondtitle: "\$0",
    subtitle: "",
    hasSubtitle: false,
    trailingText: "VIEW DETAILS",
  ),
  MyAccountListItem(
    title: "My Reviews",
    hasCorrespondtitle: false,
    correspondtitle: "",
    subtitle: "",
    hasSubtitle: false,
    trailingText: "VIEW YOUR REVIEWS",
  ),
  MyAccountListItem(
    title: "Refer & Earn",
    hasCorrespondtitle: false,
    correspondtitle: "",
    subtitle: "",
    hasSubtitle: false,
    trailingText: "VIEW DETAILS",
  ),
  MyAccountListItem(
    title: "My Questions & Answers",
    hasCorrespondtitle: false,
    correspondtitle: "",
    subtitle: "",
    hasSubtitle: false,
    trailingText: "VIEW YOUR Q&A",
  ),
  MyAccountListItem(
    title: "My Address",
    hasCorrespondtitle: false,
    correspondtitle: "",
    subtitle:
        "nani desad, gandevi dist-navsari, pin-396360, Gandevi, Gujarat - 396360",
    hasSubtitle: true,
    trailingText: "VIEW 2 MORE",
  ),
];

final List<MyAccountBelowListItem> belowAuthenticatedListItems = [
  MyAccountBelowListItem(
    title: "Notification Preference",
    hasLeadingIcon: true,
    hasMarginBelow: false,
    icon: Icons.notifications,
  ),
  MyAccountBelowListItem(
    title: "Account Settings",
    hasLeadingIcon: true,
    hasMarginBelow: true,
    icon: Icons.settings,
  ),
  MyAccountBelowListItem(
    title: "Help Centre",
    hasLeadingIcon: false,
    hasMarginBelow: false,
    icon: Icons.notifications,
  ),
  MyAccountBelowListItem(
    title: "Sell on Flipkart",
    hasLeadingIcon: false,
    icon: Icons.notifications,
    hasMarginBelow: false,
  ),
  MyAccountBelowListItem(
    title: "Legal",
    hasLeadingIcon: false,
    icon: Icons.notifications,
    hasMarginBelow: false,
  ),
  MyAccountBelowListItem(
    title: "Privacy Policy",
    hasLeadingIcon: false,
    hasMarginBelow: true,
    icon: Icons.notifications,
  ),
  MyAccountBelowListItem(
    title: "Logout of this app",
    hasLeadingIcon: true,
    icon: Icons.logout_sharp,
    hasMarginBelow: false,
  ),
  MyAccountBelowListItem(
    title: "Logout of all devices",
    hasLeadingIcon: true,
    icon: Icons.logout_sharp,
    hasMarginBelow: true,
  ),
];

final List<MyAccountBelowListItem> belowUnauthenticatedListItems = [
  MyAccountBelowListItem(
    title: "Notification Preference",
    hasLeadingIcon: true,
    hasMarginBelow: true,
    icon: Icons.notifications,
  ),
  MyAccountBelowListItem(
    title: "Help Centre",
    hasLeadingIcon: false,
    hasMarginBelow: false,
    icon: Icons.notifications,
  ),
  MyAccountBelowListItem(
    title: "Sell on Flipkart",
    hasLeadingIcon: false,
    icon: Icons.notifications,
    hasMarginBelow: false,
  ),
  MyAccountBelowListItem(
    title: "Legal",
    hasLeadingIcon: false,
    icon: Icons.notifications,
    hasMarginBelow: false,
  ),
  MyAccountBelowListItem(
    title: "Privacy Policy",
    hasLeadingIcon: false,
    hasMarginBelow: true,
    icon: Icons.notifications,
  ),
];
