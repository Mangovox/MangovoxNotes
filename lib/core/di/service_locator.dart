import 'package:get_it/get_it.dart';
import 'package:mangovox_md_notes/core/managers/locale_manager.dart';
import 'package:mangovox_md_notes/core/managers/theme_manager.dart';
import 'package:mangovox_md_notes/data/data_sources/local/app_database.dart';
import 'package:mangovox_md_notes/data/data_sources/local/daos/folders/folders_dao.dart';
import 'package:mangovox_md_notes/data/data_sources/local/daos/notes/notes_dao.dart';
import 'package:mangovox_md_notes/data/services/storage_service.dart';

/// Service locator instance.
final getIt = GetIt.instance;

/// Initializes the service locator.
Future<void> init() async {
  getIt.registerSingleton<StorageService>(StorageService());

  // Managers
  getIt.registerSingleton<LocaleManager>(
    LocaleManager(getIt<StorageService>()),
  );
  getIt.registerSingleton<ThemeManager>(ThemeManager(getIt<StorageService>()));

  // Local database
  getIt.registerSingleton<AppDatabase>(AppDatabase());

  // Local DAOs
  getIt.registerLazySingleton<NotesDao>(() => NotesDao(getIt<AppDatabase>()));
  getIt.registerLazySingleton<FoldersDao>(
    () => FoldersDao(getIt<AppDatabase>()),
  );
}
