// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_run.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TextRun _$TextRunFromJson(Map<String, dynamic> json) => _TextRun(
  text: json['text'] as String,
  bold: json['bold'] as bool? ?? false,
  italic: json['italic'] as bool? ?? false,
  underline: json['underline'] as bool? ?? false,
  strike: json['strike'] as bool? ?? false,
  textSize: (json['textSize'] as num?)?.toInt() ?? 16,
  textColorToken: $enumDecodeNullable(
    _$TextColorTokenEnumMap,
    json['textColorToken'],
  ),
);

Map<String, dynamic> _$TextRunToJson(_TextRun instance) => <String, dynamic>{
  'text': instance.text,
  'bold': instance.bold,
  'italic': instance.italic,
  'underline': instance.underline,
  'strike': instance.strike,
  'textSize': instance.textSize,
  'textColorToken': _$TextColorTokenEnumMap[instance.textColorToken],
};

const _$TextColorTokenEnumMap = {
  TextColorToken.red: 'red',
  TextColorToken.orange: 'orange',
  TextColorToken.yellow: 'yellow',
  TextColorToken.green: 'green',
  TextColorToken.blue: 'blue',
  TextColorToken.purple: 'purple',
  TextColorToken.gray: 'gray',
};
