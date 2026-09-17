import 'package:drift/drift.dart';
import 'package:mangovox_md_notes/data/data_sources/local/app_database.dart';
import 'package:mangovox_md_notes/data/data_sources/local/tables/notes_table.dart';
import 'package:mangovox_md_notes/data/entities/note_list_item.dart';
import 'package:mangovox_md_notes/editor/serialization/preview_content.dart';

part 'notes_dao.g.dart';

/// A data access object for the notes table.
@DriftAccessor(tables: [Note])
class NotesDao extends DatabaseAccessor<AppDatabase> with _$NotesDaoMixin {
  NotesDao(super.db);

  /// Watches notes inside [folderId] (non-daily only), ordered by [updatedAt]
  /// descending.
  ///
  /// If [folderId] is `null`, watches notes that have no parent folder.
  /// Drift re-runs the query only when rows matching this filter change.
  Stream<List<NoteListItem>> watchFolderNotes(String? folderId) {
    final query = select(note)
      ..where(
        (n) =>
            (folderId == null
                ? n.folderId.isNull()
                : n.folderId.equals(folderId)) &
            n.isDaily.equals(false),
      )
      ..orderBy([(n) => OrderingTerm.desc(n.updatedAt)]);

    return query.watch().map((rows) => rows.map(_toListItem).toList());
  }

  /// Searches notes by [query] across all folders (non-daily), ordered by
  /// [updatedAt] descending.
  Future<List<NoteListItem>> searchByTitle(String query) {
    final q = select(note)
      ..where((n) => n.title.contains(query) & n.isDaily.equals(false))
      ..orderBy([(n) => OrderingTerm.desc(n.updatedAt)]);

    return q.get().then((rows) => rows.map(_toListItem).toList());
  }

  /// Returns a page of daily notes ordered by [dailyDate] descending.
  ///
  /// Optionally filters to a date range [[dateFrom], [dateTo]] (inclusive).
  Future<List<NoteListItem>> getDailyNotes({
    int page = 0,
    int pageSize = 20,
    DateTime? dateFrom,
    DateTime? dateTo,
  }) {
    final query = select(note)
      ..where((n) {
        Expression<bool> condition = n.isDaily.equals(true);
        if (dateFrom != null) {
          condition = condition & n.dailyDate.isBiggerOrEqualValue(dateFrom);
        }
        if (dateTo != null) {
          condition = condition & n.dailyDate.isSmallerOrEqualValue(dateTo);
        }
        return condition;
      })
      ..orderBy([(n) => OrderingTerm.desc(n.dailyDate)])
      ..limit(pageSize, offset: page * pageSize);

    return query.get().then((rows) => rows.map(_toListItem).toList());
  }

  /// Gets a single note row by [id], including full [content].
  ///
  /// Returns `null` if no note with [id] exists.
  Future<NoteData?> getNoteById(String id) {
    final query = select(note)..where((n) => n.id.equals(id));
    return query.getSingleOrNull();
  }

  /// Upserts [entry]. If a row with the same [id] exists it is replaced.
  Future<void> upsertNote(NoteCompanion entry) =>
      into(note).insertOnConflictUpdate(entry);

  /// Deletes the note with [id].
  Future<void> deleteNote(String id) =>
      (delete(note)..where((n) => n.id.equals(id))).go();

  /// Converts a note row to a note list item.
  NoteListItem _toListItem(NoteData row) => NoteListItem(
    id: row.id,
    title: row.title,
    updatedAt: row.updatedAt,
    preview: PreviewContent.decode(row.preview),
    folderId: row.folderId,
  );
}
