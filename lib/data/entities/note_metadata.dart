import 'package:mangovox_md_notes/editor/serialization/preview_content.dart';

/// Full note metadata without the decoded [Document] content.
///
/// Use this when you need note properties (title, folder, dates) but do NOT
/// need to render the editor — e.g. the editor app-bar or an info sheet.
class NoteMetadata {
  final String id;
  final String title;
  final String? folderId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isDaily;
  final DateTime? dailyDate;
  final PreviewContent preview;

  const NoteMetadata({
    required this.id,
    required this.title,
    required this.folderId,
    required this.createdAt,
    required this.updatedAt,
    required this.isDaily,
    required this.dailyDate,
    required this.preview,
  });
}
