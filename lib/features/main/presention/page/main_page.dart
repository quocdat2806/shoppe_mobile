import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe/core/common/svgs/app_svgs.dart';
import 'package:shoppe/features/address/presentation/pages/adress_page.dart';
import 'package:shoppe/features/authentication/auth/presention/page/auth_page.dart';
import 'package:shoppe/features/authentication/forgot_password/presention/page/forgot_password_page.dart';
import 'package:shoppe/features/detail_commodity/presentation/pages/detail_commodity.dart';
import 'package:shoppe/features/detail_commodity/presentation/widgets/commodity_info.dart';
import 'package:shoppe/features/detail_profile/presentation/pages/detail_profile_page.dart';
import 'package:shoppe/features/favorite/presentation/pages/favorite_page.dart';
import 'package:shoppe/features/home/presention/pages/home_page.dart';
import 'package:shoppe/features/notification/presentation/pages/notification_page.dart';
import 'package:shoppe/features/order/presentation/pages/order_page.dart';
import 'package:shoppe/features/payment/presentation/pages/payment_page.dart';
import 'package:shoppe/features/profile/presentation/pages/profile_page.dart';
import '/features/main/presention/notifier/main_page_notifier_provider.dart';

class MainPage extends ConsumerWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainPageState = ref.watch(mainPageStateNotifierProvider);
    final mainPageNotifier = ref.watch(mainPageStateNotifierProvider.notifier);
    return MaterialApp(
      home: Scaffold(
        body: const AdressPage(), // new
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: mainPageState.currentIndexPage,
          // new
          onTap: (index) {
            mainPageNotifier.handleSwitchTab(currentIndexTab: index);
          },
          elevation: 0,
          selectedItemColor: const Color(0xfffe5f33),
          items: [
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                AppSVGs.icMeal,
                width: 24,
                height: 24,
                colorFilter:
                    const ColorFilter.mode(Color(0xfffe5f33), BlendMode.srcIn),
              ),
              icon: SvgPicture.asset(AppSVGs.icMeal, width: 24, height: 24),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppSVGs.icOrder,
                width: 24,
                height: 24,
              ),
              activeIcon: SvgPicture.asset(
                AppSVGs.icOrder,
                width: 24,
                height: 24,
                colorFilter:
                    const ColorFilter.mode(Color(0xfffe5f33), BlendMode.srcIn),
              ),
              label: 'Đơn hàng ',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppSVGs.icFavorite),
              activeIcon: SvgPicture.asset(
                AppSVGs.icFavorite,
                colorFilter:
                    const ColorFilter.mode(Color(0xfffe5f33), BlendMode.srcIn),
              ),
              label: 'Đã thích',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppSVGs.icNotification),
              activeIcon: SvgPicture.asset(
                AppSVGs.icNotification,
                colorFilter:
                    const ColorFilter.mode(Color(0xfffe5f33), BlendMode.srcIn),
              ),
              label: 'Thông báo',
            ),
            const BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.person,
                color: Color(0xfffe5f33),
              ),
              icon: Icon(Icons.person),
              label: 'Tôi',
            ),
          ],
        ),
      ),
    );
  }
}
