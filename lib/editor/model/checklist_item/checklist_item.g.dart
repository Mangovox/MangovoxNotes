// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChecklistItem _$ChecklistItemFromJson(Map<String, dynamic> json) =>
    _ChecklistItem(
      id: json['id'] as String,
      checked: json['checked'] as bool? ?? false,
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

Map<String, dynamic> _$ChecklistItemToJson(_ChecklistItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'checked': instance.checked,
      'align': _$BlockAlignEnumMap[instance.align]!,
      'content': instance.content.map((e) => e.toJson()).toList(),
      'children': instance.children?.map((e) => e.toJson()).toList(),
    };

const _$BlockAlignEnumMap = {
  BlockAlign.left: 'left',
  BlockAlign.center: 'center',
  BlockAlign.right: 'right',
};
