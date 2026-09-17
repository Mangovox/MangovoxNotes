import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mangovox_md_notes/presentation/pages/diary/diary_page.dart';
import 'package:mangovox_md_notes/presentation/pages/notes/notes_page.dart';
import 'package:mangovox_md_notes/presentation/pages/settings/settings_page.dart';
import 'package:mangovox_md_notes/presentation/routing/app_routes.dart';
import 'package:mangovox_md_notes/presentation/routing/route_transitions.dart';
import 'package:mangovox_md_notes/presentation/screens/main_screen.dart';

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
      initialLocation: AppRoutes.notesLocation,
      redirect: (context, state) {
        if (state.matchedLocation == AppRoutes.main) {
          return AppRoutes.notesLocation;
        }

        return null;
      },
      routes: [
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return MainScreen(navigationShell: navigationShell);
          },
          branches: [
            // Notes branch
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: AppRoutes.notesLocation,
                  pageBuilder: (context, state) => buildFadeTransition(
                    context: context,
                    state: state,
                    child: const NotesPage(),
                  ),
                ),
              ],
            ),

            // Diary branch
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: AppRoutes.diaryLocation,
                  pageBuilder: (context, state) => buildFadeTransition(
                    context: context,
                    state: state,
                    child: const DiaryPage(),
                  ),
                ),
              ],
            ),

            // Settings branch
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: AppRoutes.settingsLocation,
                  pageBuilder: (context, state) => buildFadeTransition(
                    context: context,
                    state: state,
                    child: const SettingsPage(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
