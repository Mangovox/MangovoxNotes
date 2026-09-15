import 'package:get_it/get_it.dart';
import 'package:mangovox_md_notes/core/managers/locale_manager.dart';
import 'package:mangovox_md_notes/core/managers/theme_manager.dart';
import 'package:mangovox_md_notes/data/services/storage_service.dart';

/// Service locator instance.
final getIt = GetIt.instance;

/// Initializes the service locator.
Future<void> init() async {
  getIt.registerSingleton<StorageService>(StorageService());

  // Managers
  getIt.registerSingleton<LocaleManager>(LocaleManager(getIt<StorageService>()));
  getIt.registerSingleton<ThemeManager>(ThemeManager(getIt<StorageService>()));
}
