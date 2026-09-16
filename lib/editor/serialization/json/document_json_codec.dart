import 'dart:convert';

import 'package:mangovox_md_notes/editor/model/document/document.dart';

class DocumentJsonCodec {
  const DocumentJsonCodec._();

  static String encode(Document document) => jsonEncode(document.toJson());

  static Document decode(String source) {
    final map = jsonDecode(source) as Map<String, dynamic>;

    return Document.fromJson(map);
  }
}
