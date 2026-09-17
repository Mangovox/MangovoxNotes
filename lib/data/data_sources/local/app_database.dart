import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:mangovox_md_notes/data/data_sources/local/daos/folders/folders_dao.dart';
import 'package:mangovox_md_notes/data/data_sources/local/daos/notes/notes_dao.dart';
import 'package:mangovox_md_notes/data/data_sources/local/tables/folders_table.dart';
import 'package:mangovox_md_notes/data/data_sources/local/tables/notes_table.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Folder, Note], daos: [FoldersDao, NotesDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (migrator) async {
      await migrator.createAll();

      await migrator.database.customStatement(
        'CREATE UNIQUE INDEX IF NOT EXISTS idx_notes_daily_date '
        'ON note (daily_date) WHERE daily_date IS NOT NULL;',
      );
    },
    onUpgrade: (migrator, from, to) async {
      if (from < 2) {
        await migrator.database.customStatement(
          'ALTER TABLE note ADD COLUMN preview TEXT;',
        );
      }
    },
  );

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'notes.db',
      native: const DriftNativeOptions(shareAcrossIsolates: true),
    );
  }
}
