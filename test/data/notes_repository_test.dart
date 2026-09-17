import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mangovox_md_notes/data/data_sources/local/app_database.dart';
import 'package:mangovox_md_notes/data/data_sources/local/daos/notes/notes_dao.dart';
import 'package:mangovox_md_notes/data/repositories/notes_repository.dart';
import 'package:mangovox_md_notes/editor/model/document/document.dart';
import 'package:mangovox_md_notes/editor/model/nodes/node.dart';
import 'package:mangovox_md_notes/editor/model/text_run/text_run.dart';
import 'package:mangovox_md_notes/editor/serialization/preview_content.dart';

void main() {
  late AppDatabase db;
  late NotesDao dao;
  late NotesRepository repository;

  setUp(() {
    db = AppDatabase(NativeDatabase.memory());
    dao = NotesDao(db);
    repository = NotesRepository(dao);
  });

  tearDown(() async {
    await db.close();
  });

  Document createSimpleDoc(String text) => Document(
        blocks: [
          Node.paragraph(
            id: 'p1',
            content: [TextRun(text: text)],
          ),
        ],
      );

  group('NotesRepository', () {
    test('saveNote and loadNote roundtrip', () async {
      final doc = createSimpleDoc('Hello Flutter');
      final noteId = await repository.saveNote(doc, title: 'My Note');

      expect(noteId, isNotEmpty);

      final loadedDoc = await repository.loadNote(noteId);
      expect(loadedDoc, isNotNull);
      expect(loadedDoc!.blocks.length, 1);
      final p = loadedDoc.blocks.first as ParagraphNode;
      expect(p.content.first.text, 'Hello Flutter');
    });

    test('getNote returns NoteMetadata without decoding document', () async {
      final doc = createSimpleDoc('Preview check');
      final noteId = await repository.saveNote(doc, title: 'Meta Title');

      final meta = await repository.getNote(noteId);
      expect(meta, isNotNull);
      expect(meta!.id, noteId);
      expect(meta.title, 'Meta Title');
      expect(meta.preview, const PreviewContent.text('Preview check'));
      expect(meta.isDaily, isFalse);
    });

    test('updateNote updates content, preview, and timestamps', () async {
      final doc1 = createSimpleDoc('Initial content');
      final noteId = await repository.saveNote(doc1, title: 'Initial title');

      final initialMeta = await repository.getNote(noteId);
      expect(initialMeta!.preview, const PreviewContent.text('Initial content'));

      final doc2 = createSimpleDoc('Updated content');
      await repository.updateNote(noteId, doc2, title: 'New title');

      final updatedMeta = await repository.getNote(noteId);
      expect(updatedMeta!.title, 'New title');
      expect(updatedMeta.preview, const PreviewContent.text('Updated content'));

      final updatedDoc = await repository.loadNote(noteId);
      final p = updatedDoc!.blocks.first as ParagraphNode;
      expect(p.content.first.text, 'Updated content');
    });

    test('watchFolderNotes streams notes in folder', () async {
      final doc = createSimpleDoc('Folder note');
      final noteId = await repository.saveNote(doc, title: 'In Folder', folderId: 'f1');

      final stream = repository.watchFolderNotes('f1');
      final list = await stream.first;

      expect(list.length, 1);
      expect(list.first.id, noteId);
      expect(list.first.title, 'In Folder');
      expect(list.first.preview, const PreviewContent.text('Folder note'));
    });

    test('searchNotes searches across folders by title', () async {
      await repository.saveNote(createSimpleDoc('Note 1'), title: 'Shopping List');
      await repository.saveNote(createSimpleDoc('Note 2'), title: 'Wishlist');
      await repository.saveNote(createSimpleDoc('Note 3'), title: 'Work items');

      final results = await repository.searchNotes('list');
      expect(results.length, 2);
      expect(results.map((n) => n.title), containsAll(['Shopping List', 'Wishlist']));
    });

    test('getDailyNotes returns paginated daily notes', () async {
      final now = DateTime.now().toUtc();
      await repository.saveNote(
        createSimpleDoc('Day 1'),
        title: 'Day 1',
        isDaily: true,
        dailyDate: now.subtract(const Duration(days: 2)),
      );
      await repository.saveNote(
        createSimpleDoc('Day 2'),
        title: 'Day 2',
        isDaily: true,
        dailyDate: now.subtract(const Duration(days: 1)),
      );
      await repository.saveNote(
        createSimpleDoc('Regular note'),
        title: 'Regular',
        isDaily: false,
      );

      final dailyList = await repository.getDailyNotes(pageSize: 10);
      expect(dailyList.length, 2);
      // Ordered by dailyDate descending: Day 2 then Day 1
      expect(dailyList[0].title, 'Day 2');
      expect(dailyList[1].title, 'Day 1');
    });

    test('deleteNote removes note', () async {
      final noteId = await repository.saveNote(createSimpleDoc('To be deleted'));
      expect(await repository.loadNote(noteId), isNotNull);

      await repository.deleteNote(noteId);
      expect(await repository.loadNote(noteId), isNull);
      expect(await repository.getNote(noteId), isNull);
    });
  });
}
