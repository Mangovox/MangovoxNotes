import 'package:drift/drift.dart';
import 'package:mangovox_md_notes/data/data_sources/local/app_database.dart';
import 'package:mangovox_md_notes/data/data_sources/local/tables/folders_table.dart';

part 'folders_dao.g.dart';

/// Data Access Object for folders.
@DriftAccessor(tables: [Folder])
class FoldersDao extends DatabaseAccessor<AppDatabase> with _$FoldersDaoMixin {
  FoldersDao(super.db);

  /// Watch all folders.
  ///
  /// The folders are ordered by the sort order in ascending order.
  Stream<List<FolderData>> watchAllFolders() {
    final query = select(folder)
      ..orderBy([(f) => OrderingTerm.asc(f.sortOrder)]);

    return query.watch();
  }

  /// Insert or update a folder.
  ///
  /// If the folder already exists, it will be updated.
  Future<void> upsertFolder(FolderCompanion entry) =>
      into(folder).insertOnConflictUpdate(entry);

  /// Delete a folder.
  Future<void> deleteFolder(FolderCompanion entry) =>
      delete(folder).delete(entry);
}
