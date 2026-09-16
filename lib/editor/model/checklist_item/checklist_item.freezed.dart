// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChecklistItem {

 String get id; bool get checked; BlockAlign get align; List<TextRun> get content; List<Node>? get children;
/// Create a copy of ChecklistItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistItemCopyWith<ChecklistItem> get copyWith => _$ChecklistItemCopyWithImpl<ChecklistItem>(this as ChecklistItem, _$identity);

  /// Serializes this ChecklistItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistItem&&(identical(other.id, id) || other.id == id)&&(identical(other.checked, checked) || other.checked == checked)&&(identical(other.align, align) || other.align == align)&&const DeepCollectionEquality().equals(other.content, content)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,checked,align,const DeepCollectionEquality().hash(content),const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'ChecklistItem(id: $id, checked: $checked, align: $align, content: $content, children: $children)';
}


}

/// @nodoc
abstract mixin class $ChecklistItemCopyWith<$Res>  {
  factory $ChecklistItemCopyWith(ChecklistItem value, $Res Function(ChecklistItem) _then) = _$ChecklistItemCopyWithImpl;
@useResult
$Res call({
 String id, bool checked, BlockAlign align, List<TextRun> content, List<Node>? children
});




}
/// @nodoc
class _$ChecklistItemCopyWithImpl<$Res>
    implements $ChecklistItemCopyWith<$Res> {
  _$ChecklistItemCopyWithImpl(this._self, this._then);

  final ChecklistItem _self;
  final $Res Function(ChecklistItem) _then;

/// Create a copy of ChecklistItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? checked = null,Object? align = null,Object? content = null,Object? children = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,checked: null == checked ? _self.checked : checked // ignore: cast_nullable_to_non_nullable
as bool,align: null == align ? _self.align : align // ignore: cast_nullable_to_non_nullable
as BlockAlign,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<TextRun>,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<Node>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistItem].
extension ChecklistItemPatterns on ChecklistItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistItem value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistItem value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool checked,  BlockAlign align,  List<TextRun> content,  List<Node>? children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistItem() when $default != null:
return $default(_that.id,_that.checked,_that.align,_that.content,_that.children);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool checked,  BlockAlign align,  List<TextRun> content,  List<Node>? children)  $default,) {final _that = this;
switch (_that) {
case _ChecklistItem():
return $default(_that.id,_that.checked,_that.align,_that.content,_that.children);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool checked,  BlockAlign align,  List<TextRun> content,  List<Node>? children)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistItem() when $default != null:
return $default(_that.id,_that.checked,_that.align,_that.content,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistItem implements ChecklistItem {
  const _ChecklistItem({required this.id, this.checked = false, this.align = BlockAlign.left, required final  List<TextRun> content, final  List<Node>? children}): _content = content,_children = children;
  factory _ChecklistItem.fromJson(Map<String, dynamic> json) => _$ChecklistItemFromJson(json);

@override final  String id;
@override@JsonKey() final  bool checked;
@override@JsonKey() final  BlockAlign align;
 final  List<TextRun> _content;
@override List<TextRun> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}

 final  List<Node>? _children;
@override List<Node>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ChecklistItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistItemCopyWith<_ChecklistItem> get copyWith => __$ChecklistItemCopyWithImpl<_ChecklistItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistItem&&(identical(other.id, id) || other.id == id)&&(identical(other.checked, checked) || other.checked == checked)&&(identical(other.align, align) || other.align == align)&&const DeepCollectionEquality().equals(other._content, _content)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,checked,align,const DeepCollectionEquality().hash(_content),const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'ChecklistItem(id: $id, checked: $checked, align: $align, content: $content, children: $children)';
}


}

/// @nodoc
abstract mixin class _$ChecklistItemCopyWith<$Res> implements $ChecklistItemCopyWith<$Res> {
  factory _$ChecklistItemCopyWith(_ChecklistItem value, $Res Function(_ChecklistItem) _then) = __$ChecklistItemCopyWithImpl;
@override @useResult
$Res call({
 String id, bool checked, BlockAlign align, List<TextRun> content, List<Node>? children
});




}
/// @nodoc
class __$ChecklistItemCopyWithImpl<$Res>
    implements _$ChecklistItemCopyWith<$Res> {
  __$ChecklistItemCopyWithImpl(this._self, this._then);

  final _ChecklistItem _self;
  final $Res Function(_ChecklistItem) _then;

/// Create a copy of ChecklistItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? checked = null,Object? align = null,Object? content = null,Object? children = freezed,}) {
  return _then(_ChecklistItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,checked: null == checked ? _self.checked : checked // ignore: cast_nullable_to_non_nullable
as bool,align: null == align ? _self.align : align // ignore: cast_nullable_to_non_nullable
as BlockAlign,content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<TextRun>,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<Node>?,
  ));
}


}

// dart format on
