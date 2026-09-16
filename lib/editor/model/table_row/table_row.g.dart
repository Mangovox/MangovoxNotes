// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocTableCell _$DocTableCellFromJson(Map<String, dynamic> json) =>
    _DocTableCell(
      content: (json['content'] as List<dynamic>)
          .map((e) => TextRun.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DocTableCellToJson(_DocTableCell instance) =>
    <String, dynamic>{
      'content': instance.content.map((e) => e.toJson()).toList(),
    };

_DocTableRow _$DocTableRowFromJson(Map<String, dynamic> json) => _DocTableRow(
  cells: (json['cells'] as List<dynamic>)
      .map((e) => DocTableCell.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DocTableRowToJson(_DocTableRow instance) =>
    <String, dynamic>{'cells': instance.cells.map((e) => e.toJson()).toList()};
