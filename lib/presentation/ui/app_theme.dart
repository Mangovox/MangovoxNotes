import 'package:flutter/material.dart';
import 'package:mangovox_md_notes/presentation/ui/app_text_theme.dart';

/// A utility class for managing the application's theme.
/// 
/// This class provides static methods to retrieve the light and dark themes of the application.
class AppTheme {
  static TextTheme get textTheme => AppTextTheme.textTheme();

  /// Returns the light theme of the application.
  static ThemeData get lightTheme {
    final scheme = ThemeData.light().colorScheme;

    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      textTheme: textTheme.apply(
        bodyColor: scheme.onSurface,
        displayColor: scheme.onSurface,
      ),
      scaffoldBackgroundColor: scheme.surface,
      canvasColor: scheme.onSurface,
    );
  }

  /// Returns the dark theme of the application.
  static ThemeData get darkTheme {
    final scheme = ThemeData.dark().colorScheme;

    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      textTheme: textTheme.apply(
        bodyColor: scheme.onSurface,
        displayColor: scheme.onSurface,
      ),
      scaffoldBackgroundColor: scheme.surface,
      canvasColor: scheme.onSurface,
    );
  }
}