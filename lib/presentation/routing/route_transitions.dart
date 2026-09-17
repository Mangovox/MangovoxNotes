import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// A builder for creating a [CustomTransitionPage] with a fade transition.
///
/// This function is a helper for creating fade transitions for routes.
/// It uses [CustomTransitionPage] to create a page with a fade transition.
///
/// Returns a [CustomTransitionPage] with a fade transition.
CustomTransitionPage<T> buildFadeTransition<T>({
  BuildContext? context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}

/// A builder for creating a [CustomTransitionPage] with a slide transition.
///
/// This function is a helper for creating slide transitions for routes.
/// It uses [CustomTransitionPage] to create a page with a slide transition.
///
/// Returns a [CustomTransitionPage] with a slide transition.
CustomTransitionPage<T> buildSlideTransition<T>({
  BuildContext? context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      final tween = Tween(
        begin: begin,
        end: end,
      ).chain(CurveTween(curve: curve));

      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}
