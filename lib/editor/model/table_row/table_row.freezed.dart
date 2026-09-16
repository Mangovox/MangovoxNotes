// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_row.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocTableCell {

 List<TextRun> get content;
/// Create a copy of DocTableCell
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocTableCellCopyWith<DocTableCell> get copyWith => _$DocTableCellCopyWithImpl<DocTableCell>(this as DocTableCell, _$identity);

  /// Serializes this DocTableCell to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocTableCell&&const DeepCollectionEquality().equals(other.content, content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content));

@override
String toString() {
  return 'DocTableCell(content: $content)';
}


}

/// @nodoc
abstract mixin class $DocTableCellCopyWith<$Res>  {
  factory $DocTableCellCopyWith(DocTableCell value, $Res Function(DocTableCell) _then) = _$DocTableCellCopyWithImpl;
@useResult
$Res call({
 List<TextRun> content
});




}
/// @nodoc
class _$DocTableCellCopyWithImpl<$Res>
    implements $DocTableCellCopyWith<$Res> {
  _$DocTableCellCopyWithImpl(this._self, this._then);

  final DocTableCell _self;
  final $Res Function(DocTableCell) _then;

/// Create a copy of DocTableCell
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<TextRun>,
  ));
}

}


/// Adds pattern-matching-related methods to [DocTableCell].
extension DocTableCellPatterns on DocTableCell {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocTableCell value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocTableCell() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocTableCell value)  $default,){
final _that = this;
switch (_that) {
case _DocTableCell():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocTableCell value)?  $default,){
final _that = this;
switch (_that) {
case _DocTableCell() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TextRun> content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocTableCell() when $default != null:
return $default(_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TextRun> content)  $default,) {final _that = this;
switch (_that) {
case _DocTableCell():
return $default(_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TextRun> content)?  $default,) {final _that = this;
switch (_that) {
case _DocTableCell() when $default != null:
return $default(_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocTableCell implements DocTableCell {
  const _DocTableCell({required final  List<TextRun> content}): _content = content;
  factory _DocTableCell.fromJson(Map<String, dynamic> json) => _$DocTableCellFromJson(json);

 final  List<TextRun> _content;
@override List<TextRun> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}


/// Create a copy of DocTableCell
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocTableCellCopyWith<_DocTableCell> get copyWith => __$DocTableCellCopyWithImpl<_DocTableCell>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocTableCellToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocTableCell&&const DeepCollectionEquality().equals(other._content, _content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_content));

@override
String toString() {
  return 'DocTableCell(content: $content)';
}


}

/// @nodoc
abstract mixin class _$DocTableCellCopyWith<$Res> implements $DocTableCellCopyWith<$Res> {
  factory _$DocTableCellCopyWith(_DocTableCell value, $Res Function(_DocTableCell) _then) = __$DocTableCellCopyWithImpl;
@override @useResult
$Res call({
 List<TextRun> content
});




}
/// @nodoc
class __$DocTableCellCopyWithImpl<$Res>
    implements _$DocTableCellCopyWith<$Res> {
  __$DocTableCellCopyWithImpl(this._self, this._then);

  final _DocTableCell _self;
  final $Res Function(_DocTableCell) _then;

/// Create a copy of DocTableCell
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,}) {
  return _then(_DocTableCell(
content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<TextRun>,
  ));
}


}


/// @nodoc
mixin _$DocTableRow {

 List<DocTableCell> get cells;
/// Create a copy of DocTableRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocTableRowCopyWith<DocTableRow> get copyWith => _$DocTableRowCopyWithImpl<DocTableRow>(this as DocTableRow, _$identity);

  /// Serializes this DocTableRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocTableRow&&const DeepCollectionEquality().equals(other.cells, cells));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cells));

@override
String toString() {
  return 'DocTableRow(cells: $cells)';
}


}

/// @nodoc
abstract mixin class $DocTableRowCopyWith<$Res>  {
  factory $DocTableRowCopyWith(DocTableRow value, $Res Function(DocTableRow) _then) = _$DocTableRowCopyWithImpl;
@useResult
$Res call({
 List<DocTableCell> cells
});




}
/// @nodoc
class _$DocTableRowCopyWithImpl<$Res>
    implements $DocTableRowCopyWith<$Res> {
  _$DocTableRowCopyWithImpl(this._self, this._then);

  final DocTableRow _self;
  final $Res Function(DocTableRow) _then;

/// Create a copy of DocTableRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cells = null,}) {
  return _then(_self.copyWith(
cells: null == cells ? _self.cells : cells // ignore: cast_nullable_to_non_nullable
as List<DocTableCell>,
  ));
}

}


/// Adds pattern-matching-related methods to [DocTableRow].
extension DocTableRowPatterns on DocTableRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocTableRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocTableRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocTableRow value)  $default,){
final _that = this;
switch (_that) {
case _DocTableRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocTableRow value)?  $default,){
final _that = this;
switch (_that) {
case _DocTableRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DocTableCell> cells)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocTableRow() when $default != null:
return $default(_that.cells);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DocTableCell> cells)  $default,) {final _that = this;
switch (_that) {
case _DocTableRow():
return $default(_that.cells);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DocTableCell> cells)?  $default,) {final _that = this;
switch (_that) {
case _DocTableRow() when $default != null:
return $default(_that.cells);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocTableRow implements DocTableRow {
  const _DocTableRow({required final  List<DocTableCell> cells}): _cells = cells;
  factory _DocTableRow.fromJson(Map<String, dynamic> json) => _$DocTableRowFromJson(json);

 final  List<DocTableCell> _cells;
@override List<DocTableCell> get cells {
  if (_cells is EqualUnmodifiableListView) return _cells;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cells);
}


/// Create a copy of DocTableRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocTableRowCopyWith<_DocTableRow> get copyWith => __$DocTableRowCopyWithImpl<_DocTableRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocTableRowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocTableRow&&const DeepCollectionEquality().equals(other._cells, _cells));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cells));

@override
String toString() {
  return 'DocTableRow(cells: $cells)';
}


}

/// @nodoc
abstract mixin class _$DocTableRowCopyWith<$Res> implements $DocTableRowCopyWith<$Res> {
  factory _$DocTableRowCopyWith(_DocTableRow value, $Res Function(_DocTableRow) _then) = __$DocTableRowCopyWithImpl;
@override @useResult
$Res call({
 List<DocTableCell> cells
});




}
/// @nodoc
class __$DocTableRowCopyWithImpl<$Res>
    implements _$DocTableRowCopyWith<$Res> {
  __$DocTableRowCopyWithImpl(this._self, this._then);

  final _DocTableRow _self;
  final $Res Function(_DocTableRow) _then;

/// Create a copy of DocTableRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cells = null,}) {
  return _then(_DocTableRow(
cells: null == cells ? _self._cells : cells // ignore: cast_nullable_to_non_nullable
as List<DocTableCell>,
  ));
}


}

// dart format on
