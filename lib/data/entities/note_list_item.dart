import 'package:mangovox_md_notes/editor/serialization/preview_content.dart';

/// Lightweight DTO used in folder note lists and the daily notes list.
///
/// Contains only the fields needed for rendering a list row — does NOT
/// include the full [content] JSON, so it is cheap to create and hold.
class NoteListItem {
  final String id;
  final String title;
  final DateTime updatedAt;
  final PreviewContent preview;

  /// Present for folder notes; `null` for daily-notes list items.
  final String? folderId;

  const NoteListItem({
    required this.id,
    required this.title,
    required this.updatedAt,
    required this.preview,
    this.folderId,
  });
}
