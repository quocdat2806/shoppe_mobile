import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppe/features/auth/presention/page/auth_page.dart';

import 'features/main/presention/page/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const ProviderScope(child: MainPage());
  }
}