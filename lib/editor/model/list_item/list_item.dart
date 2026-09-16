import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mangovox_md_notes/editor/enums/block_align.dart';
import 'package:mangovox_md_notes/editor/model/nodes/node.dart';
import 'package:mangovox_md_notes/editor/model/text_run/text_run.dart';

part 'list_item.freezed.dart';
part 'list_item.g.dart';

@freezed
abstract class ListItem with _$ListItem {
  const factory ListItem({
    required String id,
    @Default(BlockAlign.left) BlockAlign align,
    required List<TextRun> content,
    List<Node>? children,
  }) = _ListItem;

  factory ListItem.fromJson(Map<String, dynamic> json) =>
      _$ListItemFromJson(json);
}
