import 'package:flutter_test/flutter_test.dart';
import 'package:mangovox_md_notes/editor/enums/list_style.dart';
import 'package:mangovox_md_notes/editor/model/checklist_item/checklist_item.dart';
import 'package:mangovox_md_notes/editor/model/document/document.dart';
import 'package:mangovox_md_notes/editor/model/list_item/list_item.dart';
import 'package:mangovox_md_notes/editor/model/nodes/node.dart';
import 'package:mangovox_md_notes/editor/model/text_run/text_run.dart';
import 'package:mangovox_md_notes/editor/serialization/document_preview_extractor.dart';
import 'package:mangovox_md_notes/editor/serialization/preview_content.dart';

void main() {
  group('PreviewContent encode / decode', () {
    test('text roundtrip', () {
      const original = PreviewContent.text('Hello world');
      final encoded = original.encode();
      expect(encoded, 't|Hello world');
      expect(PreviewContent.decode(encoded), original);
    });

    test('image roundtrip', () {
      const original = PreviewContent.image();
      final encoded = original.encode();
      expect(encoded, 'image');
      expect(PreviewContent.decode(encoded), original);
    });

    test('file roundtrip', () {
      const original = PreviewContent.file('doc.pdf');
      final encoded = original.encode();
      expect(encoded, 'file|doc.pdf');
      expect(PreviewContent.decode(encoded), original);
    });

    test('table roundtrip', () {
      const original = PreviewContent.table();
      final encoded = original.encode();
      expect(encoded, 'table');
      expect(PreviewContent.decode(encoded), original);
    });

    test('null and empty fallback', () {
      expect(PreviewContent.decode(null), const PreviewContent.text(''));
      expect(PreviewContent.decode(''), const PreviewContent.text(''));
    });
  });

  group('DocumentPreviewExtractor', () {
    test('empty document returns empty text', () {
      const doc = Document(blocks: []);
      expect(
        DocumentPreviewExtractor.extract(doc),
        const PreviewContent.text(''),
      );
    });

    test('paragraph node extracts trimmed text', () {
      const doc = Document(
        blocks: [
          Node.paragraph(
            id: '1',
            content: [
              TextRun(text: '  First run '),
              TextRun(text: 'second run  '),
            ],
          ),
        ],
      );
      expect(
        DocumentPreviewExtractor.extract(doc),
        const PreviewContent.text('First run second run'),
      );
    });

    test('heading node extracts text', () {
      const doc = Document(
        blocks: [
          Node.heading(
            id: '1',
            level: 1,
            content: [TextRun(text: 'Title')],
          ),
        ],
      );
      expect(
        DocumentPreviewExtractor.extract(doc),
        const PreviewContent.text('Title'),
      );
    });

    test('list node extracts first item', () {
      const doc = Document(
        blocks: [
          Node.list(
            id: '1',
            style: ListStyle.dot,
            content: [
              ListItem(
                id: 'item1',
                content: [TextRun(text: 'Item one')],
              ),
              ListItem(
                id: 'item2',
                content: [TextRun(text: 'Item two')],
              ),
            ],
          ),
        ],
      );
      expect(
        DocumentPreviewExtractor.extract(doc),
        const PreviewContent.text('Item one'),
      );
    });

    test('checklist node extracts first item', () {
      const doc = Document(
        blocks: [
          Node.checklist(
            id: '1',
            content: [
              ChecklistItem(
                id: 'check1',
                checked: false,
                content: [TextRun(text: 'Todo task')],
              ),
            ],
          ),
        ],
      );
      expect(
        DocumentPreviewExtractor.extract(doc),
        const PreviewContent.text('Todo task'),
      );
    });

    test('code block extracts content truncated to 150', () {
      final longCode = 'a' * 200;
      final doc = Document(
        blocks: [
          Node.codeBlock(id: '1', content: longCode),
        ],
      );
      final preview = DocumentPreviewExtractor.extract(doc);
      expect(preview, isA<PreviewText>());
      final text = (preview as PreviewText).value;
      expect(text.length, 151); // 150 + '…'
      expect(text.startsWith('a' * 150), isTrue);
      expect(text.endsWith('…'), isTrue);
    });

    test('image node extracts PreviewImage', () {
      const doc = Document(
        blocks: [
          Node.image(id: '1', assetId: 'asset-1'),
        ],
      );
      expect(
        DocumentPreviewExtractor.extract(doc),
        const PreviewContent.image(),
      );
    });

    test('file node extracts PreviewFile with filename', () {
      const doc = Document(
        blocks: [
          Node.file(
            id: '1',
            assetId: 'asset-2',
            filename: 'report.pdf',
            mimeType: 'application/pdf',
            sizeBytes: 1024,
          ),
        ],
      );
      expect(
        DocumentPreviewExtractor.extract(doc),
        const PreviewContent.file('report.pdf'),
      );
    });

    test('table node extracts PreviewTable', () {
      final doc = Document(
        blocks: [
          Node.table(
            id: '1',
            columns: 0,
            hasHeaderRow: false,
            rows: [],
          ),
        ],
      );
      expect(
        DocumentPreviewExtractor.extract(doc),
        const PreviewContent.table(),
      );
    });
  });
}
