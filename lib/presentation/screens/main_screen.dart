import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:mangovox_md_notes/core/utils/s.dart';
import 'package:mangovox_md_notes/presentation/routing/app_routes.dart';
import 'package:mangovox_md_notes/presentation/widgets/app_icon.dart';

/// A screen that serves as the main entry point of the application, containing a navigation shell.
class MainScreen extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const MainScreen({super.key, required this.navigationShell});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

/// The state class for the MainScreen widget, managing the navigation and back button behavior.
class _MainScreenState extends State<MainScreen> {
  late final List<int> _tabsHistory;

  @override
  void initState() {
    super.initState();

    _tabsHistory = [widget.navigationShell.currentIndex];
  }

  /// Handles the selection of a destination in the navigation bar.
  ///
  /// If the selected index is the same as the current index, it does nothing.
  /// Otherwise, it updates the tabs history and navigates to the selected branch.
  void _onDestinationSelected(int index) {
    final currentIndex = widget.navigationShell.currentIndex;

    if (index == currentIndex) return;

    _tabsHistory.remove(index);
    _tabsHistory.add(index);
    widget.navigationShell.goBranch(index);
  }

  /// Handles the system back button press.
  ///
  /// If the current path is not a branch root and the router can pop, it pops the current route.
  /// If the tabs history has more than one entry, it removes the last entry and navig
  void _handleSystemBackButton() {
    final router = GoRouter.of(context);
    final currentPath = GoRouterState.of(context).uri.path;

    final isBranchRoot = {
      AppRoutes.notesLocation,
      AppRoutes.diaryLocation,
      AppRoutes.settingsLocation,
    }.contains(currentPath);

    if (!isBranchRoot && router.canPop()) {
      router.pop();

      return;
    }

    if (_tabsHistory.length > 1) {
      _tabsHistory.removeLast();
      widget.navigationShell.goBranch(_tabsHistory.last);

      return;
    }

    SystemNavigator.pop();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localizations = S.of(context);

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          _handleSystemBackButton();
        }
      },
      child: Scaffold(
        body: widget.navigationShell,
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: _onDestinationSelected,
          selectedIndex: widget.navigationShell.currentIndex,
          indicatorColor: theme.colorScheme.primary,
          destinations: <Widget>[
            NavigationDestination(
              icon: const AppIcon(icon: TablerIcons.notes),
              selectedIcon: AppIcon(
                icon: TablerIcons.notes,
                color: theme.colorScheme.onPrimary,
              ),
              label: localizations.notes_title,
            ),
            NavigationDestination(
              icon: const AppIcon(icon: TablerIcons.calendar_event),
              selectedIcon: AppIcon(
                icon: TablerIcons.calendar_event,
                color: theme.colorScheme.onPrimary,
              ),
              label: localizations.diary_title,
            ),
            NavigationDestination(
              icon: const AppIcon(icon: TablerIcons.settings),
              selectedIcon: AppIcon(
                icon: TablerIcons.settings,
                color: theme.colorScheme.onPrimary,
              ),
              label: localizations.settings_title,
            ),
          ],
        ),
      ),
    );
  }
}
