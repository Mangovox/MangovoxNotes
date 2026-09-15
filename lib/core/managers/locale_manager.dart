import 'package:flutter/material.dart';
import 'package:mangovox_md_notes/core/utils/s.dart';
import 'package:mangovox_md_notes/data/services/storage_service.dart';

/// A manager class that handles the application's locale settings.
///
/// This class uses a [ValueNotifier] to notify listeners of changes to the locale.
class LocaleManager {
  final StorageService _storageService;

  /// A [ValueNotifier] that holds the current locale of the application.
  final ValueNotifier<Locale> localeNotifier = ValueNotifier<Locale>(
    const Locale('en'),
  );

  LocaleManager(this._storageService) {
    _init();
  }

  /// Initializes the locale settings by checking for a saved locale in secure storage.
  ///
  /// If a saved locale is found, it is set as the current locale. Otherwise,
  /// the system's default locale is used.
  Future<void> _init() async {
    final savedLocale = await _storageService.getLocale();

    if (savedLocale != null) {
      localeNotifier.value = Locale(savedLocale);
    } else {
      _initLocale();
    }
  }

  /// Sets the application's locale to the specified [locale].
  Future<void> setLocale(Locale locale) async {
    if (localeNotifier.value != locale) {
      localeNotifier.value = locale;
      await _storageService.saveLocale(locale.languageCode);

      localeNotifier.value = locale;
    }
  }

  /// Initializes the locale based on the system's default locale.
  ///
  /// If the system's locale is supported, it is set as the current locale.
  /// Otherwise, the default locale ('en') is used.
  void _initLocale() {
    final systemLocale = WidgetsBinding.instance.platformDispatcher.locale;
    localeNotifier.value = systemLocale;

    if (_isLocaleSupported(systemLocale)) {
      localeNotifier.value = systemLocale;
    } else {
      _storageService.saveLocale('en');
    }

    _storageService.saveLocale(localeNotifier.value.languageCode);
  }

  /// Checks if the specified [locale] is supported by the application.
  ///
  /// Returns `true` if the locale is supported, otherwise returns `false`.
  bool _isLocaleSupported(Locale locale) {
    return S.supportedLocales.any(
      (supportedLocale) => supportedLocale.languageCode == locale.languageCode,
    );
  }
}
