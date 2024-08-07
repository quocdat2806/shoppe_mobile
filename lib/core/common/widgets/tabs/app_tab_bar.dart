import 'package:flutter/material.dart';
import 'package:shoppe/core/common/color/app_colors.dart';
import 'package:shoppe/core/common/shadows/app_shadows.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';

/// tabController = TabController(length: 2, vsync: this)
/// Page with TickerProviderStateMixin

class AppTabBar extends StatelessWidget {
  final TabController? tabController;
  final List<String> tabItems;

  const AppTabBar({
    super.key,
    this.tabController,
    this.tabItems = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          // color: Theme.of(context),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          // boxShadow: AppShadow.boxShadow,
        ),
      child: TabBar(
        controller: tabController,
        tabs: buildTabItems(),
        labelStyle: AppTextStyle.blackS14,
        unselectedLabelStyle: AppTextStyle.whiteS14,
        indicator: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          boxShadow: AppShadow.defaultShadow,
        ),
        indicatorWeight: 0,
      ),
    );
  }

  List<Widget> buildTabItems() {
    List<Widget> items = [];
    for (int i = 0; i < (tabItems).length; i++) {
      items.add(buildTabItem(tabItems[i], i));
    }
    return items;
  }

  Widget buildTabItem(String title, int index) {
    return Text(
      title,
    );
  }
}
