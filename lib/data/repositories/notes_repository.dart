import 'package:drift/drift.dart';
import 'package:mangovox_md_notes/data/data_sources/local/app_database.dart';
import 'package:mangovox_md_notes/data/data_sources/local/daos/notes/notes_dao.dart';
import 'package:mangovox_md_notes/data/entities/note_list_item.dart';
import 'package:mangovox_md_notes/data/entities/note_metadata.dart';
import 'package:mangovox_md_notes/editor/model/document/document.dart';
import 'package:mangovox_md_notes/editor/serialization/document_preview_extractor.dart';
import 'package:mangovox_md_notes/editor/serialization/json/document_json_codec.dart';
import 'package:mangovox_md_notes/editor/serialization/preview_content.dart';
import 'package:uuid/uuid.dart';

/// Repository for managing notes.
///
/// Acts as a single API surface bridging [NotesDao] (persistence) and
/// editor models / serialization ([DocumentJsonCodec], [DocumentPreviewExtractor]).
class NotesRepository {
  final NotesDao notesDao;
  final Uuid _uuid = Uuid();

  NotesRepository(this.notesDao);

  /// Persists [document] as a new note and returns the generated note ID.
  ///
  /// Automatically generates UUID v4, computes preview, and sets timestamps.
  Future<String> saveNote(
    Document document, {
    String title = '',
    String? folderId,
    bool isDaily = false,
    DateTime? dailyDate,
  }) async {
    final id = _uuid.v4();
    final now = DateTime.now().toUtc();
    final preview = DocumentPreviewExtractor.extract(document).encode();
    final content = DocumentJsonCodec.encode(document);

    await notesDao.upsertNote(
      NoteCompanion(
        id: Value(id),
        title: Value(title),
        folderId: Value(folderId),
        createdAt: Value(now),
        updatedAt: Value(now),
        isDaily: Value(isDaily),
        dailyDate: Value(dailyDate),
        content: Value(content),
        preview: Value(preview),
      ),
    );

    return id;
  }

  /// Updates an existing note identified by [id] with a new [document].
  ///
  /// Updates [content], [preview], and [updatedAt]. Optionally updates [title]
  /// and [folderId] if provided.
  ///
  /// Throws [StateError] if no note with [id] is found.
  Future<void> updateNote(
    String id,
    Document document, {
    String? title,
    String? folderId,
  }) async {
    final existing = await notesDao.getNoteById(id);
    if (existing == null) {
      throw StateError('Note with id "$id" not found.');
    }

    final preview = DocumentPreviewExtractor.extract(document).encode();
    final content = DocumentJsonCodec.encode(document);
    final now = DateTime.now().toUtc();

    await notesDao.upsertNote(
      NoteCompanion(
        id: Value(id),
        title: Value(title ?? existing.title),
        folderId: Value(folderId ?? existing.folderId),
        createdAt: Value(existing.createdAt),
        updatedAt: Value(now),
        isDaily: Value(existing.isDaily),
        dailyDate: Value(existing.dailyDate),
        content: Value(content),
        preview: Value(preview),
      ),
    );
  }

  /// Loads and decodes the [Document] stored under [id].
  ///
  /// Returns `null` if no note with that ID exists.
  Future<Document?> loadNote(String id) async {
    final note = await notesDao.getNoteById(id);
    if (note == null) return null;

    return DocumentJsonCodec.decode(note.content);
  }

  /// Returns metadata for note [id] without decoding the [Document] content.
  ///
  /// Returns `null` if no note with that ID exists.
  Future<NoteMetadata?> getNote(String id) async {
    final note = await notesDao.getNoteById(id);
    if (note == null) return null;

    return NoteMetadata(
      id: note.id,
      title: note.title,
      folderId: note.folderId,
      createdAt: note.createdAt,
      updatedAt: note.updatedAt,
      isDaily: note.isDaily,
      dailyDate: note.dailyDate,
      preview: PreviewContent.decode(note.preview),
    );
  }

  /// Watches notes in [folderId] (non-daily notes only), ordered by updatedAt desc.
  ///
  /// If [folderId] is null, watches root notes without a parent folder.
  Stream<List<NoteListItem>> watchFolderNotes(String? folderId) {
    return notesDao.watchFolderNotes(folderId);
  }

  /// Searches non-daily notes across all folders by [query] in title.
  Future<List<NoteListItem>> searchNotes(String query) {
    return notesDao.searchByTitle(query);
  }

  /// Returns a paginated list of daily notes ordered by [dailyDate] descending.
  Future<List<NoteListItem>> getDailyNotes({
    int page = 0,
    int pageSize = 20,
    DateTime? dateFrom,
    DateTime? dateTo,
  }) {
    return notesDao.getDailyNotes(
      page: page,
      pageSize: pageSize,
      dateFrom: dateFrom,
      dateTo: dateTo,
    );
  }

  /// Deletes note with [id].
  Future<void> deleteNote(String id) {
    return notesDao.deleteNote(id);
  }
}
