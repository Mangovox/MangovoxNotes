// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Document _$DocumentFromJson(Map<String, dynamic> json) => _Document(
  version: (json['version'] as num?)?.toInt() ?? 1,
  blocks: (json['blocks'] as List<dynamic>)
      .map((e) => Node.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DocumentToJson(_Document instance) => <String, dynamic>{
  'version': instance.version,
  'blocks': instance.blocks.map((e) => e.toJson()).toList(),
};
