import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mangovox_md_notes/core/constants/storage_constants.dart';

/// A service class that provides methods to interact with secure storage.
///
/// This class uses the `flutter_secure_storage` package to securely store
/// and retrieve data such as theme mode and locale settings.
class StorageService {
  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  /// Saves the specified [locale] to secure storage.
  Future<void> saveLocale(String locale) async {
    await _writeString(StorageConstants.localeKey, locale);
  }

  /// Retrieves the locale from secure storage.
  Future<String?> getLocale() async {
    return await _readString(StorageConstants.localeKey);
  }

  /// Saves the specified [themeMode] to secure storage.
  Future<void> saveThemeMode(String themeMode) async {
    await _writeString(StorageConstants.themeModeKey, themeMode);
  }

  /// Retrieves the theme mode from secure storage.
  Future<String?> getThemeMode() async {
    return await _readString(StorageConstants.themeModeKey);
  }

  /// Reads a string value from secure storage for the given [key].
  Future<String?> _readString(String key) async {
    return await _secureStorage.read(key: key);
  }

  /// Writes a string value to secure storage for the given [key] and [value].
  Future<void> _writeString(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }
}
