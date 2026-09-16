// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListItem {

 String get id; BlockAlign get align; List<TextRun> get content; List<Node>? get children;
/// Create a copy of ListItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListItemCopyWith<ListItem> get copyWith => _$ListItemCopyWithImpl<ListItem>(this as ListItem, _$identity);

  /// Serializes this ListItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListItem&&(identical(other.id, id) || other.id == id)&&(identical(other.align, align) || other.align == align)&&const DeepCollectionEquality().equals(other.content, content)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,align,const DeepCollectionEquality().hash(content),const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'ListItem(id: $id, align: $align, content: $content, children: $children)';
}


}

/// @nodoc
abstract mixin class $ListItemCopyWith<$Res>  {
  factory $ListItemCopyWith(ListItem value, $Res Function(ListItem) _then) = _$ListItemCopyWithImpl;
@useResult
$Res call({
 String id, BlockAlign align, List<TextRun> content, List<Node>? children
});




}
/// @nodoc
class _$ListItemCopyWithImpl<$Res>
    implements $ListItemCopyWith<$Res> {
  _$ListItemCopyWithImpl(this._self, this._then);

  final ListItem _self;
  final $Res Function(ListItem) _then;

/// Create a copy of ListItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? align = null,Object? content = null,Object? children = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,align: null == align ? _self.align : align // ignore: cast_nullable_to_non_nullable
as BlockAlign,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<TextRun>,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<Node>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ListItem].
extension ListItemPatterns on ListItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListItem value)  $default,){
final _that = this;
switch (_that) {
case _ListItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListItem value)?  $default,){
final _that = this;
switch (_that) {
case _ListItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  BlockAlign align,  List<TextRun> content,  List<Node>? children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListItem() when $default != null:
return $default(_that.id,_that.align,_that.content,_that.children);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  BlockAlign align,  List<TextRun> content,  List<Node>? children)  $default,) {final _that = this;
switch (_that) {
case _ListItem():
return $default(_that.id,_that.align,_that.content,_that.children);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  BlockAlign align,  List<TextRun> content,  List<Node>? children)?  $default,) {final _that = this;
switch (_that) {
case _ListItem() when $default != null:
return $default(_that.id,_that.align,_that.content,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListItem implements ListItem {
  const _ListItem({required this.id, this.align = BlockAlign.left, required final  List<TextRun> content, final  List<Node>? children}): _content = content,_children = children;
  factory _ListItem.fromJson(Map<String, dynamic> json) => _$ListItemFromJson(json);

@override final  String id;
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


/// Create a copy of ListItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListItemCopyWith<_ListItem> get copyWith => __$ListItemCopyWithImpl<_ListItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListItem&&(identical(other.id, id) || other.id == id)&&(identical(other.align, align) || other.align == align)&&const DeepCollectionEquality().equals(other._content, _content)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,align,const DeepCollectionEquality().hash(_content),const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'ListItem(id: $id, align: $align, content: $content, children: $children)';
}


}

/// @nodoc
abstract mixin class _$ListItemCopyWith<$Res> implements $ListItemCopyWith<$Res> {
  factory _$ListItemCopyWith(_ListItem value, $Res Function(_ListItem) _then) = __$ListItemCopyWithImpl;
@override @useResult
$Res call({
 String id, BlockAlign align, List<TextRun> content, List<Node>? children
});




}
/// @nodoc
class __$ListItemCopyWithImpl<$Res>
    implements _$ListItemCopyWith<$Res> {
  __$ListItemCopyWithImpl(this._self, this._then);

  final _ListItem _self;
  final $Res Function(_ListItem) _then;

/// Create a copy of ListItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? align = null,Object? content = null,Object? children = freezed,}) {
  return _then(_ListItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,align: null == align ? _self.align : align // ignore: cast_nullable_to_non_nullable
as BlockAlign,content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<TextRun>,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<Node>?,
  ));
}


}

// dart format on
