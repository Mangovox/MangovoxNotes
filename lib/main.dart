import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mangovox_md_notes/core/constants/app_constants.dart';
import 'package:mangovox_md_notes/core/managers/locale_manager.dart';
import 'package:mangovox_md_notes/core/managers/theme_manager.dart';
import 'package:mangovox_md_notes/core/utils/s.dart';
import 'package:mangovox_md_notes/presentation/routing/app_router.dart';
import 'package:mangovox_md_notes/presentation/ui/app_theme.dart';

import 'core/di/service_locator.dart' as di;

/// Global key for the navigator, used for navigation and routing.
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

/// The main entry point of the application.
void main() async {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  runApp(
    MyApp(
      appRouter: AppRouter(navigatorKey: navigatorKey),
      localeManager: di.getIt<LocaleManager>(),
      themeManager: di.getIt<ThemeManager>(),
    ),
  );
}

/// The root widget of the application, responsible for setting up the app's theme, localization, and routing.
/// 
/// This widget uses [ValueListenableBuilder] to listen for changes in the locale and theme mode, 
/// allowing the app to dynamically update its appearance and language settings.
class MyApp extends StatelessWidget {
  final AppRouter _appRouter;
  final LocaleManager _localeManager;
  final ThemeManager _themeManager;

  const MyApp({
    super.key,
    required this._appRouter,
    required this._localeManager,
    required this._themeManager,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Locale>(
      valueListenable: _localeManager.localeNotifier,
      builder: (context, locale, _) {
        return ValueListenableBuilder<ThemeMode>(
          valueListenable: _themeManager.themeModeNotifier,
          builder: (context, themeMode, _) {
            return MaterialApp.router(
              title: AppConstants.appName,
              routerConfig: _appRouter.router,
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: themeMode,
              debugShowCheckedModeBanner: false,
              supportedLocales: S.supportedLocales,
              localizationsDelegates: S.localizationDelegates,
            );
          },
        );
      },
    );
  }
}
