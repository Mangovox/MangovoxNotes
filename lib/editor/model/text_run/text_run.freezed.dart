// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_run.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TextRun {

 String get text; bool get bold; bool get italic; bool get underline; bool get strike; int get textSize; TextColorToken? get textColorToken;
/// Create a copy of TextRun
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextRunCopyWith<TextRun> get copyWith => _$TextRunCopyWithImpl<TextRun>(this as TextRun, _$identity);

  /// Serializes this TextRun to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextRun&&(identical(other.text, text) || other.text == text)&&(identical(other.bold, bold) || other.bold == bold)&&(identical(other.italic, italic) || other.italic == italic)&&(identical(other.underline, underline) || other.underline == underline)&&(identical(other.strike, strike) || other.strike == strike)&&(identical(other.textSize, textSize) || other.textSize == textSize)&&(identical(other.textColorToken, textColorToken) || other.textColorToken == textColorToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,bold,italic,underline,strike,textSize,textColorToken);

@override
String toString() {
  return 'TextRun(text: $text, bold: $bold, italic: $italic, underline: $underline, strike: $strike, textSize: $textSize, textColorToken: $textColorToken)';
}


}

/// @nodoc
abstract mixin class $TextRunCopyWith<$Res>  {
  factory $TextRunCopyWith(TextRun value, $Res Function(TextRun) _then) = _$TextRunCopyWithImpl;
@useResult
$Res call({
 String text, bool bold, bool italic, bool underline, bool strike, int textSize, TextColorToken? textColorToken
});




}
/// @nodoc
class _$TextRunCopyWithImpl<$Res>
    implements $TextRunCopyWith<$Res> {
  _$TextRunCopyWithImpl(this._self, this._then);

  final TextRun _self;
  final $Res Function(TextRun) _then;

/// Create a copy of TextRun
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? bold = null,Object? italic = null,Object? underline = null,Object? strike = null,Object? textSize = null,Object? textColorToken = freezed,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,bold: null == bold ? _self.bold : bold // ignore: cast_nullable_to_non_nullable
as bool,italic: null == italic ? _self.italic : italic // ignore: cast_nullable_to_non_nullable
as bool,underline: null == underline ? _self.underline : underline // ignore: cast_nullable_to_non_nullable
as bool,strike: null == strike ? _self.strike : strike // ignore: cast_nullable_to_non_nullable
as bool,textSize: null == textSize ? _self.textSize : textSize // ignore: cast_nullable_to_non_nullable
as int,textColorToken: freezed == textColorToken ? _self.textColorToken : textColorToken // ignore: cast_nullable_to_non_nullable
as TextColorToken?,
  ));
}

}


/// Adds pattern-matching-related methods to [TextRun].
extension TextRunPatterns on TextRun {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TextRun value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TextRun() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TextRun value)  $default,){
final _that = this;
switch (_that) {
case _TextRun():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TextRun value)?  $default,){
final _that = this;
switch (_that) {
case _TextRun() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  bool bold,  bool italic,  bool underline,  bool strike,  int textSize,  TextColorToken? textColorToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TextRun() when $default != null:
return $default(_that.text,_that.bold,_that.italic,_that.underline,_that.strike,_that.textSize,_that.textColorToken);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  bool bold,  bool italic,  bool underline,  bool strike,  int textSize,  TextColorToken? textColorToken)  $default,) {final _that = this;
switch (_that) {
case _TextRun():
return $default(_that.text,_that.bold,_that.italic,_that.underline,_that.strike,_that.textSize,_that.textColorToken);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  bool bold,  bool italic,  bool underline,  bool strike,  int textSize,  TextColorToken? textColorToken)?  $default,) {final _that = this;
switch (_that) {
case _TextRun() when $default != null:
return $default(_that.text,_that.bold,_that.italic,_that.underline,_that.strike,_that.textSize,_that.textColorToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TextRun implements TextRun {
  const _TextRun({required this.text, this.bold = false, this.italic = false, this.underline = false, this.strike = false, this.textSize = 16, this.textColorToken});
  factory _TextRun.fromJson(Map<String, dynamic> json) => _$TextRunFromJson(json);

@override final  String text;
@override@JsonKey() final  bool bold;
@override@JsonKey() final  bool italic;
@override@JsonKey() final  bool underline;
@override@JsonKey() final  bool strike;
@override@JsonKey() final  int textSize;
@override final  TextColorToken? textColorToken;

/// Create a copy of TextRun
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TextRunCopyWith<_TextRun> get copyWith => __$TextRunCopyWithImpl<_TextRun>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TextRunToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TextRun&&(identical(other.text, text) || other.text == text)&&(identical(other.bold, bold) || other.bold == bold)&&(identical(other.italic, italic) || other.italic == italic)&&(identical(other.underline, underline) || other.underline == underline)&&(identical(other.strike, strike) || other.strike == strike)&&(identical(other.textSize, textSize) || other.textSize == textSize)&&(identical(other.textColorToken, textColorToken) || other.textColorToken == textColorToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,bold,italic,underline,strike,textSize,textColorToken);

@override
String toString() {
  return 'TextRun(text: $text, bold: $bold, italic: $italic, underline: $underline, strike: $strike, textSize: $textSize, textColorToken: $textColorToken)';
}


}

/// @nodoc
abstract mixin class _$TextRunCopyWith<$Res> implements $TextRunCopyWith<$Res> {
  factory _$TextRunCopyWith(_TextRun value, $Res Function(_TextRun) _then) = __$TextRunCopyWithImpl;
@override @useResult
$Res call({
 String text, bool bold, bool italic, bool underline, bool strike, int textSize, TextColorToken? textColorToken
});




}
/// @nodoc
class __$TextRunCopyWithImpl<$Res>
    implements _$TextRunCopyWith<$Res> {
  __$TextRunCopyWithImpl(this._self, this._then);

  final _TextRun _self;
  final $Res Function(_TextRun) _then;

/// Create a copy of TextRun
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? bold = null,Object? italic = null,Object? underline = null,Object? strike = null,Object? textSize = null,Object? textColorToken = freezed,}) {
  return _then(_TextRun(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,bold: null == bold ? _self.bold : bold // ignore: cast_nullable_to_non_nullable
as bool,italic: null == italic ? _self.italic : italic // ignore: cast_nullable_to_non_nullable
as bool,underline: null == underline ? _self.underline : underline // ignore: cast_nullable_to_non_nullable
as bool,strike: null == strike ? _self.strike : strike // ignore: cast_nullable_to_non_nullable
as bool,textSize: null == textSize ? _self.textSize : textSize // ignore: cast_nullable_to_non_nullable
as int,textColorToken: freezed == textColorToken ? _self.textColorToken : textColorToken // ignore: cast_nullable_to_non_nullable
as TextColorToken?,
  ));
}


}

// dart format on
