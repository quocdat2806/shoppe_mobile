import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigator {
  BuildContext context;

  AppNavigator({required this.context});

  void pop<T extends Object?>([T? result]) {
    GoRouter.of(context).pop(result);
  }
  void push<T extends Object?>([T? result]) {
    GoRouter.of(context).push(result as String);
  }


}