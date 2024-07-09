import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppe/features/authentication/auth/presention/page/auth_page.dart';
import 'package:shoppe/features/authentication/forgot_password/presention/page/forgot_password_page.dart';
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
        body:  const AuthPage(), // new
        bottomNavigationBar: BottomNavigationBar(
          type:BottomNavigationBarType.fixed ,
          currentIndex: mainPageState.currentIndexPage, // new
          onTap:(index){
            mainPageNotifier.handleSwitchTab(currentIndexTab: index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'don hang',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'thong bao',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ],
        ),
      ),
    );
  }
}
