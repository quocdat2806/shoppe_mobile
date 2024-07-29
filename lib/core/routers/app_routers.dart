import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shoppe/features/appstart/onbroading/presentation/page/onboarding_page.dart';
import 'package:shoppe/features/appstart/spash/presentation/page/splash_page.dart';
import 'package:shoppe/features/authentication/auth/presention/page/auth_page.dart';
import 'package:shoppe/features/home/presention/pages/home_page.dart';
import 'package:shoppe/features/main/presention/page/main_page.dart';
class AppRouter {
  AppRouter._();
  static final rootKey = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
    navigatorKey: rootKey,
    initialLocation: '/',
    debugLogDiagnostics: false,
    routes: _routes,
  );

  ///main page
  static const String splash = "/";
  static const String main = "main";
  static const String home = "home";
  static const String auth = "auth";
  static const String signIn = "signIn";
  static const String signUp = "signUp";
  static const String onBoarding = 'onBoarding';
  static const String profile = 'profile';
  static final _routes = <RouteBase>[
    GoRoute(
      path: splash,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      name: auth,

      path: "/$auth",
      builder: (context, state) => const AuthPage(),
    ),
    GoRoute(
      name: onBoarding,
      path: "/$onBoarding",
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(
      name: home,
      path: "/$home",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: main,
      path: "/$main",
      builder: (context, state) => const MainPage(),
    ),
  ];
}