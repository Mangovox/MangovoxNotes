// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParagraphNode _$ParagraphNodeFromJson(Map<String, dynamic> json) =>
    ParagraphNode(
      id: json['id'] as String,
      align:
          $enumDecodeNullable(_$BlockAlignEnumMap, json['align']) ??
          BlockAlign.left,
      indent: (json['indent'] as num?)?.toInt() ?? 0,
      content: (json['content'] as List<dynamic>)
          .map((e) => TextRun.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ParagraphNodeToJson(ParagraphNode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'align': _$BlockAlignEnumMap[instance.align]!,
      'indent': instance.indent,
      'content': instance.content.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

const _$BlockAlignEnumMap = {
  BlockAlign.left: 'left',
  BlockAlign.center: 'center',
  BlockAlign.right: 'right',
};

HeadingNode _$HeadingNodeFromJson(Map<String, dynamic> json) => HeadingNode(
  id: json['id'] as String,
  level: (json['level'] as num).toInt(),
  align:
      $enumDecodeNullable(_$BlockAlignEnumMap, json['align']) ??
      BlockAlign.left,
  content: (json['content'] as List<dynamic>)
      .map((e) => TextRun.fromJson(e as Map<String, dynamic>))
      .toList(),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$HeadingNodeToJson(HeadingNode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'align': _$BlockAlignEnumMap[instance.align]!,
      'content': instance.content.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

ListNode _$ListNodeFromJson(Map<String, dynamic> json) => ListNode(
  id: json['id'] as String,
  style: $enumDecode(_$ListStyleEnumMap, json['style']),
  content: (json['content'] as List<dynamic>)
      .map((e) => ListItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$ListNodeToJson(ListNode instance) => <String, dynamic>{
  'id': instance.id,
  'style': _$ListStyleEnumMap[instance.style]!,
  'content': instance.content.map((e) => e.toJson()).toList(),
  'type': instance.$type,
};

const _$ListStyleEnumMap = {
  ListStyle.dash: 'dash',
  ListStyle.dot: 'dot',
  ListStyle.numbered: 'numbered',
};

ChecklistNode _$ChecklistNodeFromJson(Map<String, dynamic> json) =>
    ChecklistNode(
      id: json['id'] as String,
      content: (json['content'] as List<dynamic>)
          .map((e) => ChecklistItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ChecklistNodeToJson(ChecklistNode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

CodeBlockNode _$CodeBlockNodeFromJson(Map<String, dynamic> json) =>
    CodeBlockNode(
      id: json['id'] as String,
      language: json['language'] as String?,
      content: json['content'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CodeBlockNodeToJson(CodeBlockNode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language': instance.language,
      'content': instance.content,
      'type': instance.$type,
    };

TableNode _$TableNodeFromJson(Map<String, dynamic> json) => TableNode(
  id: json['id'] as String,
  columns: (json['columns'] as num).toInt(),
  hasHeaderRow: json['hasHeaderRow'] as bool,
  rows: (json['rows'] as List<dynamic>)
      .map((e) => DocTableRow.fromJson(e as Map<String, dynamic>))
      .toList(),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$TableNodeToJson(TableNode instance) => <String, dynamic>{
  'id': instance.id,
  'columns': instance.columns,
  'hasHeaderRow': instance.hasHeaderRow,
  'rows': instance.rows.map((e) => e.toJson()).toList(),
  'type': instance.$type,
};

ImageNode _$ImageNodeFromJson(Map<String, dynamic> json) => ImageNode(
  id: json['id'] as String,
  assetId: json['assetId'] as String,
  alt: json['alt'] as String?,
  caption: json['caption'] as String?,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$ImageNodeToJson(ImageNode instance) => <String, dynamic>{
  'id': instance.id,
  'assetId': instance.assetId,
  'alt': instance.alt,
  'caption': instance.caption,
  'type': instance.$type,
};

FileNode _$FileNodeFromJson(Map<String, dynamic> json) => FileNode(
  id: json['id'] as String,
  assetId: json['assetId'] as String,
  filename: json['filename'] as String,
  mimeType: json['mimeType'] as String,
  sizeBytes: (json['sizeBytes'] as num).toInt(),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$FileNodeToJson(FileNode instance) => <String, dynamic>{
  'id': instance.id,
  'assetId': instance.assetId,
  'filename': instance.filename,
  'mimeType': instance.mimeType,
  'sizeBytes': instance.sizeBytes,
  'type': instance.$type,
};
