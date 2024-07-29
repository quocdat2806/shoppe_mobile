import 'package:flutter/material.dart';
import 'package:shoppe/core/enums/tabs_page.dart';
import '/features/main/presention/hooks/main_page_hooks.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
class MainPage extends HookWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final hook = useMainPageHooks();
    final pageList = useMemoized(()=>[
      TabsPage.home.page,
      TabsPage.notification.page,
      TabsPage.profile.page,
      TabsPage.favorite.page,
      TabsPage.order.page,
    ]);
    final tabs = useMemoized(()=>[
      TabsPage.home,
      TabsPage.notification,
      TabsPage.profile,
      TabsPage.favorite,
      TabsPage.order,
    ]);
    return Scaffold(
      body: pageList[hook.mainState.value.currentIndexPage], // new
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: hook.mainState.value.currentIndexPage,
        onTap:hook.handleSwitchTab,
        elevation: 0,
        selectedItemColor: const Color(0xfffe5f33),
        items: tabs.map((e) => e.tab).toList(),
        // items: [
        //   BottomNavigationBarItem(
        //     activeIcon: SvgPicture.asset(
        //       AppSVGs.icMeal,
        //       width: 24,
        //       height: 24,
        //       colorFilter:
        //       const ColorFilter.mode(Color(0xfffe5f33), BlendMode.srcIn),
        //     ),
        //     icon: SvgPicture.asset(AppSVGs.icMeal, width: 24, height: 24),
        //     label: 'Home',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: SvgPicture.asset(
        //       AppSVGs.icOrder,
        //       width: 24,
        //       height: 24,
        //     ),
        //     activeIcon: SvgPicture.asset(
        //       AppSVGs.icOrder,
        //       width: 24,
        //       height: 24,
        //       colorFilter:
        //       const ColorFilter.mode(Color(0xfffe5f33), BlendMode.srcIn),
        //     ),
        //     label: 'Đơn hàng ',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: SvgPicture.asset(AppSVGs.icFavorite),
        //     activeIcon: SvgPicture.asset(
        //       AppSVGs.icFavorite,
        //       colorFilter:
        //       const ColorFilter.mode(Color(0xfffe5f33), BlendMode.srcIn),
        //     ),
        //     label: 'Đã thích',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: SvgPicture.asset(AppSVGs.icNotification),
        //     activeIcon: SvgPicture.asset(
        //       AppSVGs.icNotification,
        //       colorFilter:
        //       const ColorFilter.mode(Color(0xfffe5f33), BlendMode.srcIn),
        //     ),
        //     label: 'Thông báo',
        //   ),
        //   const BottomNavigationBarItem(
        //     activeIcon: Icon(
        //       Icons.person,
        //       color: Color(0xfffe5f33),
        //     ),
        //     icon: Icon(Icons.person),
        //     label: 'Tôi',
        //   ),
        // ],
      ),
    );
  }
}
