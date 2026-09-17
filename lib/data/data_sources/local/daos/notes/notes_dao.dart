import 'package:drift/drift.dart';
import 'package:mangovox_md_notes/data/data_sources/local/app_database.dart';
import 'package:mangovox_md_notes/data/data_sources/local/tables/notes_table.dart';

part 'notes_dao.g.dart';

/// A data access object for the notes table.
@DriftAccessor(tables: [Note])
class NotesDao extends DatabaseAccessor<AppDatabase> with _$NotesDaoMixin {
  NotesDao(super.db);

  /// Watches notes in a specific folder.
  ///
  /// If [folderId] is null, it will watch for notes without a folder.
  /// The notes are ordered by the last modified date in descending order.
  Stream<List<NoteData>> watchNotesInFolder(String? folderId) {
    final query = select(note)
      ..where(
        (n) => folderId == null
            ? n.folderId.isNull()
            : n.folderId.equals(folderId),
      )
      ..orderBy([(n) => OrderingTerm.desc(n.updatedAt)]);

    return query.watch();
  }

  /// Gets a daily note for a specific date.
  Future<NoteData?> getDailyNote(DateTime date) {
    final query = select(note)
      ..where((n) => n.isDaily.equals(true) & n.dailyDate.equals(date));

    return query.getSingleOrNull();
  }

  /// Watches daily notes within a specific date range.
  ///
  /// The notes are ordered by the daily date in descending order.
  Stream<List<NoteData>> watchDailyNotesRange(DateTime from, DateTime to) {
    final query = select(note)
      ..where(
        (n) =>
            n.isDaily.equals(true) &
            n.dailyDate.isBiggerOrEqualValue(from) &
            n.dailyDate.isSmallerOrEqualValue(to),
      )
      ..orderBy([(n) => OrderingTerm.desc(n.dailyDate)]);

    return query.watch();
  }

  /// Searches notes by title.
  Future<List<NoteData>> searchByTitle(String query) {
    final q = select(note)..where((n) => n.title.contains(query));

    return q.get();
  }

  /// Gets a note by its ID.
  Future<NoteData?> getNoteById(String id) {
    final query = select(note)..where((n) => n.id.equals(id));

    return query.getSingleOrNull();
  }

  /// Upserts a note.
  ///
  /// If the note already exists, it will be updated.
  Future<void> upsertNote(NoteCompanion entry) =>
      into(note).insertOnConflictUpdate(entry);

  /// Deletes a note by its ID.
  Future<void> deleteNote(String id) =>
      (delete(note)..where((n) => n.id.equals(id))).go();
}
