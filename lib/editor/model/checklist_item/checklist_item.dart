import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mangovox_md_notes/editor/enums/block_align.dart';
import 'package:mangovox_md_notes/editor/model/nodes/node.dart';
import 'package:mangovox_md_notes/editor/model/text_run/text_run.dart';

part 'checklist_item.freezed.dart';
part 'checklist_item.g.dart';

@freezed
abstract class ChecklistItem with _$ChecklistItem {
  const factory ChecklistItem({
    required String id,
    @Default(false) bool checked,
    @Default(BlockAlign.left) BlockAlign align,
    required List<TextRun> content,
    List<Node>? children, // по конвенции — только ChecklistNode
  }) = _ChecklistItem;

  factory ChecklistItem.fromJson(Map<String, dynamic> json) =>
      _$ChecklistItemFromJson(json);
}
