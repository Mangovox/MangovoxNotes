/// Represents the preview content of a note, stored in the database as
/// a compact encoded string.
///
/// Encoding protocol:
///   - [PreviewText]  -> `t|{text}`
///   - [PreviewImage] -> `image`
///   - [PreviewFile]  -> `file|{filename}`
///   - [PreviewTable] -> `table`
///
/// The UI layer is responsible for localizing non-text variants.
sealed class PreviewContent {
  const PreviewContent();

  const factory PreviewContent.text(String value) = PreviewText;
  const factory PreviewContent.image() = PreviewImage;
  const factory PreviewContent.file(String filename) = PreviewFile;
  const factory PreviewContent.table() = PreviewTable;

  /// Encodes this [PreviewContent] into a compact string for DB storage.
  String encode();

  /// Decodes a [PreviewContent] from a DB-stored string.
  ///
  /// Returns [PreviewText] with an empty value if [raw] is null or unrecognised.
  static PreviewContent decode(String? raw) {
    if (raw == null || raw.isEmpty) return const PreviewContent.text('');

    if (raw == 'image') return const PreviewContent.image();
    if (raw == 'table') return const PreviewContent.table();

    if (raw.startsWith('file|')) {
      return PreviewContent.file(raw.substring(5));
    }
    if (raw.startsWith('t|')) {
      return PreviewContent.text(raw.substring(2));
    }

    // Fallback: treat unrecognised strings as plain text.
    return PreviewContent.text(raw);
  }
}

/// A text snippet extracted from the note content.
final class PreviewText extends PreviewContent {
  final String value;

  const PreviewText(this.value);

  @override
  String encode() => 't|$value';

  @override
  bool operator ==(Object other) =>
      other is PreviewText && other.value == value;

  @override
  int get hashCode => value.hashCode;
}

/// The first block is an image.
final class PreviewImage extends PreviewContent {
  const PreviewImage();

  @override
  String encode() => 'image';

  @override
  bool operator ==(Object other) => other is PreviewImage;

  @override
  int get hashCode => 'image'.hashCode;
}

/// The first block is a file attachment.
final class PreviewFile extends PreviewContent {
  final String filename;

  const PreviewFile(this.filename);

  @override
  String encode() => 'file|$filename';

  @override
  bool operator ==(Object other) =>
      other is PreviewFile && other.filename == filename;

  @override
  int get hashCode => filename.hashCode;
}

/// The first block is a table.
final class PreviewTable extends PreviewContent {
  const PreviewTable();

  @override
  String encode() => 'table';

  @override
  bool operator ==(Object other) => other is PreviewTable;

  @override
  int get hashCode => 'table'.hashCode;
}
