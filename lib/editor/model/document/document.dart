import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mangovox_md_notes/editor/model/nodes/node.dart';

part 'document.freezed.dart';
part 'document.g.dart';

@freezed
abstract class Document with _$Document {
  const factory Document({
    @Default(1) int version,
    required List<Node> blocks,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
}
