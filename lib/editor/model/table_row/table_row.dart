import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mangovox_md_notes/editor/model/text_run/text_run.dart';

part 'table_row.freezed.dart';
part 'table_row.g.dart';

@freezed
abstract class DocTableCell with _$DocTableCell {
  const factory DocTableCell({required List<TextRun> content}) = _DocTableCell;

  factory DocTableCell.fromJson(Map<String, dynamic> json) =>
      _$DocTableCellFromJson(json);
}

@freezed
abstract class DocTableRow with _$DocTableRow {
  const factory DocTableRow({required List<DocTableCell> cells}) = _DocTableRow;

  factory DocTableRow.fromJson(Map<String, dynamic> json) =>
      _$DocTableRowFromJson(json);
}
