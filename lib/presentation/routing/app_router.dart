import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// A utility class for managing the application's routing.
///
/// This class can be expanded to include methods for defining routes and navigation logic.
class AppRouter {
  final GlobalKey<NavigatorState> navigatorKey;
  final GoRouter router;

  AppRouter({required this.navigatorKey})
    : router = _createRouter(navigatorKey: navigatorKey);

  static GoRouter _createRouter({
    required GlobalKey<NavigatorState> navigatorKey,
  }) {
    return GoRouter(
      navigatorKey: navigatorKey,
      initialLocation: '/',
      routes: [],
    );
  }
}
