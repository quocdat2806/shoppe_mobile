import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe/core/common/svgs/app_svgs.dart';
enum TabsPage {
  home,
  order,
  favorite,
  notification,
  profile
}
extension TabsPageExt on TabsPage {
  String get nameTab {
    switch(this){
      case TabsPage.home:return "Home";
      case TabsPage.order:return "Order";
      case TabsPage.favorite:return "Favorite";
      case TabsPage.notification:return "Notification";
      case TabsPage.profile:return "Profile";
    }
  }
  Widget get iconTab{
    switch(this){
      case TabsPage.home:return const Icon(Icons.no_meals,color: Colors.red,);
      case TabsPage.order:return const Icon(Icons.offline_share_rounded,color: Colors.red);
      case TabsPage.favorite:return SvgPicture.asset(AppSVGs.icFavorite);
      case TabsPage.notification:return SvgPicture.asset(AppSVGs.icNotification);
      case TabsPage.profile:return SvgPicture.asset(AppSVGs.icProfile);
    }
  }

}

