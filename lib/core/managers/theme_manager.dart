import 'package:flutter/material.dart';
import 'package:mangovox_md_notes/data/services/storage_service.dart';

/// A manager class that handles the application's theme settings.
class ThemeManager {
  final StorageService _storageService;

  /// A [ValueNotifier] that holds the current theme mode of the application.
  final ValueNotifier<ThemeMode> themeModeNotifier = ValueNotifier<ThemeMode>(
    ThemeMode.system,
  );

  ThemeManager(this._storageService) {
    _init();
  }

  /// Initializes the theme settings by checking for a saved theme mode in secure storage.
  /// 
  /// If a saved theme mode is found, it is set as the current theme mode. Otherwise,
  /// the system's default theme mode is used.
  Future<void> _init() async {
    final themeMode = await _storageService.getThemeMode();

    if (themeMode != null) {
      themeModeNotifier.value = _getThemeModeFromString(themeMode);
    } else {
      themeModeNotifier.value = ThemeMode.system;
      saveThemeMode(ThemeMode.system);
    }
  }

  /// Saves the specified [themeMode] to secure storage and updates the [themeModeNotifier].
  Future<void> saveThemeMode(ThemeMode themeMode) async {
    if (themeModeNotifier.value != themeMode) {
      themeModeNotifier.value = themeMode;
      await _storageService.saveThemeMode(_getStringFromThemeMode(themeMode));
    }
  }

  /// Converts a string representation of a theme mode to a [ThemeMode] enum.
  ThemeMode _getThemeModeFromString(String themeMode) {
    switch (themeMode) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  /// Converts a [ThemeMode] enum to its string representation.
  String _getStringFromThemeMode(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.light:
        return 'light';
      case ThemeMode.dark:
        return 'dark';
      default:
        return 'system';
    }
  }
}
