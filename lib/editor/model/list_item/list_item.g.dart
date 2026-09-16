// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListItem _$ListItemFromJson(Map<String, dynamic> json) => _ListItem(
  id: json['id'] as String,
  align:
      $enumDecodeNullable(_$BlockAlignEnumMap, json['align']) ??
      BlockAlign.left,
  content: (json['content'] as List<dynamic>)
      .map((e) => TextRun.fromJson(e as Map<String, dynamic>))
      .toList(),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => Node.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ListItemToJson(_ListItem instance) => <String, dynamic>{
  'id': instance.id,
  'align': _$BlockAlignEnumMap[instance.align]!,
  'content': instance.content.map((e) => e.toJson()).toList(),
  'children': instance.children?.map((e) => e.toJson()).toList(),
};

const _$BlockAlignEnumMap = {
  BlockAlign.left: 'left',
  BlockAlign.center: 'center',
  BlockAlign.right: 'right',
};
