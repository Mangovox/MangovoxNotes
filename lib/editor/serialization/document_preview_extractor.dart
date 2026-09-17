import 'package:mangovox_md_notes/editor/model/document/document.dart';
import 'package:mangovox_md_notes/editor/model/nodes/node.dart';
import 'package:mangovox_md_notes/editor/model/text_run/text_run.dart';
import 'package:mangovox_md_notes/editor/serialization/preview_content.dart';

/// Extracts a [PreviewContent] from a [Document] by inspecting the first
/// non-empty block.
///
/// All text-bearing nodes produce [PreviewText] (truncated to [_maxLength]).
/// Non-text nodes produce their respective type tokens ([PreviewImage], etc.)
/// for localisation in the UI layer.
abstract final class DocumentPreviewExtractor {
  static const int _maxLength = 150;

  /// Returns the [PreviewContent] for [document].
  static PreviewContent extract(Document document) {
    for (final block in document.blocks) {
      final preview = _fromNode(block);
      if (preview != null) return preview;
    }
    return const PreviewContent.text('');
  }

  static PreviewContent? _fromNode(Node node) {
    return switch (node) {
      ParagraphNode(:final content) => _textFromRuns(content),
      HeadingNode(:final content) => _textFromRuns(content),
      ListNode(:final content) when content.isNotEmpty =>
        _textFromRuns(content.first.content),
      ChecklistNode(:final content) when content.isNotEmpty =>
        _textFromRuns(content.first.content),
      CodeBlockNode(:final content) when content.isNotEmpty =>
        _previewText(content),
      ImageNode() => const PreviewContent.image(),
      FileNode(:final filename) => PreviewContent.file(filename),
      TableNode() => const PreviewContent.table(),
      _ => null,
    };
  }

  static PreviewContent? _textFromRuns(List<TextRun> runs) {
    final text = runs.map((r) => r.text).join().trim();
    if (text.isEmpty) return null;
    return _previewText(text);
  }

  static PreviewContent _previewText(String text) {
    final trimmed = text.trim();
    if (trimmed.length <= _maxLength) return PreviewContent.text(trimmed);
    return PreviewContent.text('${trimmed.substring(0, _maxLength)}…');
  }
}
