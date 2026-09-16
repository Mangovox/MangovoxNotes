import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mangovox_md_notes/editor/enums/block_align.dart';
import 'package:mangovox_md_notes/editor/enums/list_style.dart';
import 'package:mangovox_md_notes/editor/model/checklist_item/checklist_item.dart';
import 'package:mangovox_md_notes/editor/model/list_item/list_item.dart';
import 'package:mangovox_md_notes/editor/model/table_row/table_row.dart';
import 'package:mangovox_md_notes/editor/model/text_run/text_run.dart';

part 'node.freezed.dart';
part 'node.g.dart';

@Freezed(unionKey: 'type')
sealed class Node with _$Node {
  const Node._();

  const factory Node.paragraph({
    required String id,
    @Default(BlockAlign.left) BlockAlign align,
    @Default(0) int indent,
    required List<TextRun> content,
  }) = ParagraphNode;

  @Assert('level >= 1 && level <= 3', 'heading level must be 1, 2 or 3')
  const factory Node.heading({
    required String id,
    required int level,
    @Default(BlockAlign.left) BlockAlign align,
    required List<TextRun> content,
  }) = HeadingNode;

  const factory Node.list({
    required String id,
    required ListStyle style,
    required List<ListItem> content,
  }) = ListNode;

  const factory Node.checklist({
    required String id,
    required List<ChecklistItem> content,
  }) = ChecklistNode;

  const factory Node.codeBlock({
    required String id,
    String? language,
    required String content,
  }) = CodeBlockNode;

  @Assert(
    'rows.every((r) => r.cells.length == columns)',
    'Row cell count must match columns',
  )
  factory Node.table({
    required String id,
    required int columns,
    required bool hasHeaderRow,
    required List<DocTableRow> rows,
  }) = TableNode;

  const factory Node.image({
    required String id,
    required String assetId,
    String? alt,
    String? caption,
  }) = ImageNode;

  const factory Node.file({
    required String id,
    required String assetId,
    required String filename,
    required String mimeType,
    required int sizeBytes,
  }) = FileNode;

  factory Node.fromJson(Map<String, dynamic> json) => _$NodeFromJson(json);

  String get id => switch (this) {
    ParagraphNode(id: final v) => v,
    HeadingNode(id: final v) => v,
    ListNode(id: final v) => v,
    ChecklistNode(id: final v) => v,
    CodeBlockNode(id: final v) => v,
    TableNode(id: final v) => v,
    ImageNode(id: final v) => v,
    FileNode(id: final v) => v,
  };
}
