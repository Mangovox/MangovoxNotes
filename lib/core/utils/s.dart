import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mangovox_md_notes/src/localization/app_localizations.dart';

/// A utility class for localization and supported locales.
///
/// This class provides static methods and constants for managing localization in the application.
/// It includes supported locales, localization delegates, and methods to retrieve localized
/// strings and language names.
class S {
  static const en = Locale('en');
  static const ru = Locale('ru');

  /// A list of supported locales in the application.
  static const supportedLocales = [en, ru];

  /// A list of localization delegates used for localization in the application.
  static const localizationDelegates = <LocalizationsDelegate>[
    GlobalWidgetsLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    AppLocalizations.delegate,
  ];

  /// Retrieves the [AppLocalizations] instance for the given [context].
  static AppLocalizations of(BuildContext context) =>
      AppLocalizations.of(context);

  /// Returns the display name of the language for the given [locale].
  ///
  /// If the language is not recognized, it returns the uppercase language code.
  static String getLanguageName(Locale locale) {
    switch (locale.languageCode) {
      case 'en':
        return 'English';
      case 'ru':
        return 'Русский';
      default:
        return locale.languageCode.toUpperCase();
    }
  }
}
