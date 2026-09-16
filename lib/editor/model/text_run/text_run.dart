import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mangovox_md_notes/editor/enums/text_color_token.dart';

part 'text_run.freezed.dart';
part 'text_run.g.dart';


/// A [TextRun] represents a segment of text with specific formatting attributes.
@freezed
abstract class TextRun with _$TextRun {
  const factory TextRun({
    required String text,
    @Default(false) bool bold,
    @Default(false) bool italic,
    @Default(false) bool underline,
    @Default(false) bool strike,
    @Default(16) int textSize,
    TextColorToken? textColorToken,
  }) = _TextRun;

  factory TextRun.fromJson(Map<String, dynamic> json) => _$TextRunFromJson(json);
}