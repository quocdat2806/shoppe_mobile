import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe/core/common/svgs/app_svgs.dart';
import 'package:shoppe/features/favorite/presentation/pages/favorite_page.dart';
import 'package:shoppe/features/home/presention/pages/home_page.dart';
import 'package:shoppe/features/notification/presentation/pages/notification_page.dart';
import 'package:shoppe/features/order/presentation/pages/order_page.dart';
import 'package:shoppe/features/profile/presentation/pages/profile_page.dart';
enum TabsPage {
  home,
  order,
  favorite,
  notification,
  profile
}
extension MainTabExtension on TabsPage {
  Widget get page {
    switch (this) {
      case TabsPage.home:
        return const HomePage();
      case TabsPage.notification:
        return const NotificationPage();
      case TabsPage.profile:
        return const ProfilePage();
      case TabsPage.order:
        return const OrderPage();
      case TabsPage.favorite:
        return const FavoritePage();
    }
  }
  BottomNavigationBarItem get tab {
    switch (this) {
      case TabsPage.home:
        return const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
        );
      case TabsPage.notification:
        return const BottomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined),
          label: "Notifications",
        );
      case TabsPage.profile:
        return const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "Profile",
        );
      case TabsPage.favorite:
        return const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "Profile",
        );
      case TabsPage.order:
        return const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "Profile",
        );
    }
  }
}

