// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Node _$NodeFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'paragraph':
          return ParagraphNode.fromJson(
            json
          );
                case 'heading':
          return HeadingNode.fromJson(
            json
          );
                case 'list':
          return ListNode.fromJson(
            json
          );
                case 'checklist':
          return ChecklistNode.fromJson(
            json
          );
                case 'codeBlock':
          return CodeBlockNode.fromJson(
            json
          );
                case 'table':
          return TableNode.fromJson(
            json
          );
                case 'image':
          return ImageNode.fromJson(
            json
          );
                case 'file':
          return FileNode.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'Node',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$Node {

 String get id;
/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NodeCopyWith<Node> get copyWith => _$NodeCopyWithImpl<Node>(this as Node, _$identity);

  /// Serializes this Node to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Node&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'Node(id: $id)';
}


}

/// @nodoc
abstract mixin class $NodeCopyWith<$Res>  {
  factory $NodeCopyWith(Node value, $Res Function(Node) _then) = _$NodeCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$NodeCopyWithImpl<$Res>
    implements $NodeCopyWith<$Res> {
  _$NodeCopyWithImpl(this._self, this._then);

  final Node _self;
  final $Res Function(Node) _then;

/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Node].
extension NodePatterns on Node {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ParagraphNode value)?  paragraph,TResult Function( HeadingNode value)?  heading,TResult Function( ListNode value)?  list,TResult Function( ChecklistNode value)?  checklist,TResult Function( CodeBlockNode value)?  codeBlock,TResult Function( TableNode value)?  table,TResult Function( ImageNode value)?  image,TResult Function( FileNode value)?  file,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ParagraphNode() when paragraph != null:
return paragraph(_that);case HeadingNode() when heading != null:
return heading(_that);case ListNode() when list != null:
return list(_that);case ChecklistNode() when checklist != null:
return checklist(_that);case CodeBlockNode() when codeBlock != null:
return codeBlock(_that);case TableNode() when table != null:
return table(_that);case ImageNode() when image != null:
return image(_that);case FileNode() when file != null:
return file(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ParagraphNode value)  paragraph,required TResult Function( HeadingNode value)  heading,required TResult Function( ListNode value)  list,required TResult Function( ChecklistNode value)  checklist,required TResult Function( CodeBlockNode value)  codeBlock,required TResult Function( TableNode value)  table,required TResult Function( ImageNode value)  image,required TResult Function( FileNode value)  file,}){
final _that = this;
switch (_that) {
case ParagraphNode():
return paragraph(_that);case HeadingNode():
return heading(_that);case ListNode():
return list(_that);case ChecklistNode():
return checklist(_that);case CodeBlockNode():
return codeBlock(_that);case TableNode():
return table(_that);case ImageNode():
return image(_that);case FileNode():
return file(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ParagraphNode value)?  paragraph,TResult? Function( HeadingNode value)?  heading,TResult? Function( ListNode value)?  list,TResult? Function( ChecklistNode value)?  checklist,TResult? Function( CodeBlockNode value)?  codeBlock,TResult? Function( TableNode value)?  table,TResult? Function( ImageNode value)?  image,TResult? Function( FileNode value)?  file,}){
final _that = this;
switch (_that) {
case ParagraphNode() when paragraph != null:
return paragraph(_that);case HeadingNode() when heading != null:
return heading(_that);case ListNode() when list != null:
return list(_that);case ChecklistNode() when checklist != null:
return checklist(_that);case CodeBlockNode() when codeBlock != null:
return codeBlock(_that);case TableNode() when table != null:
return table(_that);case ImageNode() when image != null:
return image(_that);case FileNode() when file != null:
return file(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  BlockAlign align,  int indent,  List<TextRun> content)?  paragraph,TResult Function( String id,  int level,  BlockAlign align,  List<TextRun> content)?  heading,TResult Function( String id,  ListStyle style,  List<ListItem> content)?  list,TResult Function( String id,  List<ChecklistItem> content)?  checklist,TResult Function( String id,  String? language,  String content)?  codeBlock,TResult Function( String id,  int columns,  bool hasHeaderRow,  List<DocTableRow> rows)?  table,TResult Function( String id,  String assetId,  String? alt,  String? caption)?  image,TResult Function( String id,  String assetId,  String filename,  String mimeType,  int sizeBytes)?  file,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ParagraphNode() when paragraph != null:
return paragraph(_that.id,_that.align,_that.indent,_that.content);case HeadingNode() when heading != null:
return heading(_that.id,_that.level,_that.align,_that.content);case ListNode() when list != null:
return list(_that.id,_that.style,_that.content);case ChecklistNode() when checklist != null:
return checklist(_that.id,_that.content);case CodeBlockNode() when codeBlock != null:
return codeBlock(_that.id,_that.language,_that.content);case TableNode() when table != null:
return table(_that.id,_that.columns,_that.hasHeaderRow,_that.rows);case ImageNode() when image != null:
return image(_that.id,_that.assetId,_that.alt,_that.caption);case FileNode() when file != null:
return file(_that.id,_that.assetId,_that.filename,_that.mimeType,_that.sizeBytes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  BlockAlign align,  int indent,  List<TextRun> content)  paragraph,required TResult Function( String id,  int level,  BlockAlign align,  List<TextRun> content)  heading,required TResult Function( String id,  ListStyle style,  List<ListItem> content)  list,required TResult Function( String id,  List<ChecklistItem> content)  checklist,required TResult Function( String id,  String? language,  String content)  codeBlock,required TResult Function( String id,  int columns,  bool hasHeaderRow,  List<DocTableRow> rows)  table,required TResult Function( String id,  String assetId,  String? alt,  String? caption)  image,required TResult Function( String id,  String assetId,  String filename,  String mimeType,  int sizeBytes)  file,}) {final _that = this;
switch (_that) {
case ParagraphNode():
return paragraph(_that.id,_that.align,_that.indent,_that.content);case HeadingNode():
return heading(_that.id,_that.level,_that.align,_that.content);case ListNode():
return list(_that.id,_that.style,_that.content);case ChecklistNode():
return checklist(_that.id,_that.content);case CodeBlockNode():
return codeBlock(_that.id,_that.language,_that.content);case TableNode():
return table(_that.id,_that.columns,_that.hasHeaderRow,_that.rows);case ImageNode():
return image(_that.id,_that.assetId,_that.alt,_that.caption);case FileNode():
return file(_that.id,_that.assetId,_that.filename,_that.mimeType,_that.sizeBytes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  BlockAlign align,  int indent,  List<TextRun> content)?  paragraph,TResult? Function( String id,  int level,  BlockAlign align,  List<TextRun> content)?  heading,TResult? Function( String id,  ListStyle style,  List<ListItem> content)?  list,TResult? Function( String id,  List<ChecklistItem> content)?  checklist,TResult? Function( String id,  String? language,  String content)?  codeBlock,TResult? Function( String id,  int columns,  bool hasHeaderRow,  List<DocTableRow> rows)?  table,TResult? Function( String id,  String assetId,  String? alt,  String? caption)?  image,TResult? Function( String id,  String assetId,  String filename,  String mimeType,  int sizeBytes)?  file,}) {final _that = this;
switch (_that) {
case ParagraphNode() when paragraph != null:
return paragraph(_that.id,_that.align,_that.indent,_that.content);case HeadingNode() when heading != null:
return heading(_that.id,_that.level,_that.align,_that.content);case ListNode() when list != null:
return list(_that.id,_that.style,_that.content);case ChecklistNode() when checklist != null:
return checklist(_that.id,_that.content);case CodeBlockNode() when codeBlock != null:
return codeBlock(_that.id,_that.language,_that.content);case TableNode() when table != null:
return table(_that.id,_that.columns,_that.hasHeaderRow,_that.rows);case ImageNode() when image != null:
return image(_that.id,_that.assetId,_that.alt,_that.caption);case FileNode() when file != null:
return file(_that.id,_that.assetId,_that.filename,_that.mimeType,_that.sizeBytes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class ParagraphNode extends Node {
  const ParagraphNode({required this.id, this.align = BlockAlign.left, this.indent = 0, required final  List<TextRun> content, final  String? $type}): _content = content,$type = $type ?? 'paragraph',super._();
  factory ParagraphNode.fromJson(Map<String, dynamic> json) => _$ParagraphNodeFromJson(json);

@override final  String id;
@JsonKey() final  BlockAlign align;
@JsonKey() final  int indent;
 final  List<TextRun> _content;
 List<TextRun> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}


@JsonKey(name: 'type')
final String $type;


/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParagraphNodeCopyWith<ParagraphNode> get copyWith => _$ParagraphNodeCopyWithImpl<ParagraphNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParagraphNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParagraphNode&&(identical(other.id, id) || other.id == id)&&(identical(other.align, align) || other.align == align)&&(identical(other.indent, indent) || other.indent == indent)&&const DeepCollectionEquality().equals(other._content, _content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,align,indent,const DeepCollectionEquality().hash(_content));

@override
String toString() {
  return 'Node.paragraph(id: $id, align: $align, indent: $indent, content: $content)';
}


}

/// @nodoc
abstract mixin class $ParagraphNodeCopyWith<$Res> implements $NodeCopyWith<$Res> {
  factory $ParagraphNodeCopyWith(ParagraphNode value, $Res Function(ParagraphNode) _then) = _$ParagraphNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, BlockAlign align, int indent, List<TextRun> content
});




}
/// @nodoc
class _$ParagraphNodeCopyWithImpl<$Res>
    implements $ParagraphNodeCopyWith<$Res> {
  _$ParagraphNodeCopyWithImpl(this._self, this._then);

  final ParagraphNode _self;
  final $Res Function(ParagraphNode) _then;

/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? align = null,Object? indent = null,Object? content = null,}) {
  return _then(ParagraphNode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,align: null == align ? _self.align : align // ignore: cast_nullable_to_non_nullable
as BlockAlign,indent: null == indent ? _self.indent : indent // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<TextRun>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class HeadingNode extends Node {
  const HeadingNode({required this.id, required this.level, this.align = BlockAlign.left, required final  List<TextRun> content, final  String? $type}): assert(level >= 1 && level <= 3, 'heading level must be 1, 2 or 3'),_content = content,$type = $type ?? 'heading',super._();
  factory HeadingNode.fromJson(Map<String, dynamic> json) => _$HeadingNodeFromJson(json);

@override final  String id;
 final  int level;
@JsonKey() final  BlockAlign align;
 final  List<TextRun> _content;
 List<TextRun> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}


@JsonKey(name: 'type')
final String $type;


/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeadingNodeCopyWith<HeadingNode> get copyWith => _$HeadingNodeCopyWithImpl<HeadingNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeadingNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeadingNode&&(identical(other.id, id) || other.id == id)&&(identical(other.level, level) || other.level == level)&&(identical(other.align, align) || other.align == align)&&const DeepCollectionEquality().equals(other._content, _content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,level,align,const DeepCollectionEquality().hash(_content));

@override
String toString() {
  return 'Node.heading(id: $id, level: $level, align: $align, content: $content)';
}


}

/// @nodoc
abstract mixin class $HeadingNodeCopyWith<$Res> implements $NodeCopyWith<$Res> {
  factory $HeadingNodeCopyWith(HeadingNode value, $Res Function(HeadingNode) _then) = _$HeadingNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, int level, BlockAlign align, List<TextRun> content
});




}
/// @nodoc
class _$HeadingNodeCopyWithImpl<$Res>
    implements $HeadingNodeCopyWith<$Res> {
  _$HeadingNodeCopyWithImpl(this._self, this._then);

  final HeadingNode _self;
  final $Res Function(HeadingNode) _then;

/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? level = null,Object? align = null,Object? content = null,}) {
  return _then(HeadingNode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,align: null == align ? _self.align : align // ignore: cast_nullable_to_non_nullable
as BlockAlign,content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<TextRun>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ListNode extends Node {
  const ListNode({required this.id, required this.style, required final  List<ListItem> content, final  String? $type}): _content = content,$type = $type ?? 'list',super._();
  factory ListNode.fromJson(Map<String, dynamic> json) => _$ListNodeFromJson(json);

@override final  String id;
 final  ListStyle style;
 final  List<ListItem> _content;
 List<ListItem> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}


@JsonKey(name: 'type')
final String $type;


/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListNodeCopyWith<ListNode> get copyWith => _$ListNodeCopyWithImpl<ListNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListNode&&(identical(other.id, id) || other.id == id)&&(identical(other.style, style) || other.style == style)&&const DeepCollectionEquality().equals(other._content, _content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,style,const DeepCollectionEquality().hash(_content));

@override
String toString() {
  return 'Node.list(id: $id, style: $style, content: $content)';
}


}

/// @nodoc
abstract mixin class $ListNodeCopyWith<$Res> implements $NodeCopyWith<$Res> {
  factory $ListNodeCopyWith(ListNode value, $Res Function(ListNode) _then) = _$ListNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, ListStyle style, List<ListItem> content
});




}
/// @nodoc
class _$ListNodeCopyWithImpl<$Res>
    implements $ListNodeCopyWith<$Res> {
  _$ListNodeCopyWithImpl(this._self, this._then);

  final ListNode _self;
  final $Res Function(ListNode) _then;

/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? style = null,Object? content = null,}) {
  return _then(ListNode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as ListStyle,content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<ListItem>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ChecklistNode extends Node {
  const ChecklistNode({required this.id, required final  List<ChecklistItem> content, final  String? $type}): _content = content,$type = $type ?? 'checklist',super._();
  factory ChecklistNode.fromJson(Map<String, dynamic> json) => _$ChecklistNodeFromJson(json);

@override final  String id;
 final  List<ChecklistItem> _content;
 List<ChecklistItem> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}


@JsonKey(name: 'type')
final String $type;


/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistNodeCopyWith<ChecklistNode> get copyWith => _$ChecklistNodeCopyWithImpl<ChecklistNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistNode&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._content, _content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_content));

@override
String toString() {
  return 'Node.checklist(id: $id, content: $content)';
}


}

/// @nodoc
abstract mixin class $ChecklistNodeCopyWith<$Res> implements $NodeCopyWith<$Res> {
  factory $ChecklistNodeCopyWith(ChecklistNode value, $Res Function(ChecklistNode) _then) = _$ChecklistNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, List<ChecklistItem> content
});




}
/// @nodoc
class _$ChecklistNodeCopyWithImpl<$Res>
    implements $ChecklistNodeCopyWith<$Res> {
  _$ChecklistNodeCopyWithImpl(this._self, this._then);

  final ChecklistNode _self;
  final $Res Function(ChecklistNode) _then;

/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? content = null,}) {
  return _then(ChecklistNode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<ChecklistItem>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class CodeBlockNode extends Node {
  const CodeBlockNode({required this.id, this.language, required this.content, final  String? $type}): $type = $type ?? 'codeBlock',super._();
  factory CodeBlockNode.fromJson(Map<String, dynamic> json) => _$CodeBlockNodeFromJson(json);

@override final  String id;
 final  String? language;
 final  String content;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodeBlockNodeCopyWith<CodeBlockNode> get copyWith => _$CodeBlockNodeCopyWithImpl<CodeBlockNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CodeBlockNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodeBlockNode&&(identical(other.id, id) || other.id == id)&&(identical(other.language, language) || other.language == language)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,language,content);

@override
String toString() {
  return 'Node.codeBlock(id: $id, language: $language, content: $content)';
}


}

/// @nodoc
abstract mixin class $CodeBlockNodeCopyWith<$Res> implements $NodeCopyWith<$Res> {
  factory $CodeBlockNodeCopyWith(CodeBlockNode value, $Res Function(CodeBlockNode) _then) = _$CodeBlockNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, String? language, String content
});




}
/// @nodoc
class _$CodeBlockNodeCopyWithImpl<$Res>
    implements $CodeBlockNodeCopyWith<$Res> {
  _$CodeBlockNodeCopyWithImpl(this._self, this._then);

  final CodeBlockNode _self;
  final $Res Function(CodeBlockNode) _then;

/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? language = freezed,Object? content = null,}) {
  return _then(CodeBlockNode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class TableNode extends Node {
   TableNode({required this.id, required this.columns, required this.hasHeaderRow, required final  List<DocTableRow> rows, final  String? $type}): assert(rows.every((r) => r.cells.length == columns), 'Row cell count must match columns'),_rows = rows,$type = $type ?? 'table',super._();
  factory TableNode.fromJson(Map<String, dynamic> json) => _$TableNodeFromJson(json);

@override final  String id;
 final  int columns;
 final  bool hasHeaderRow;
 final  List<DocTableRow> _rows;
 List<DocTableRow> get rows {
  if (_rows is EqualUnmodifiableListView) return _rows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rows);
}


@JsonKey(name: 'type')
final String $type;


/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TableNodeCopyWith<TableNode> get copyWith => _$TableNodeCopyWithImpl<TableNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TableNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TableNode&&(identical(other.id, id) || other.id == id)&&(identical(other.columns, columns) || other.columns == columns)&&(identical(other.hasHeaderRow, hasHeaderRow) || other.hasHeaderRow == hasHeaderRow)&&const DeepCollectionEquality().equals(other._rows, _rows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,columns,hasHeaderRow,const DeepCollectionEquality().hash(_rows));

@override
String toString() {
  return 'Node.table(id: $id, columns: $columns, hasHeaderRow: $hasHeaderRow, rows: $rows)';
}


}

/// @nodoc
abstract mixin class $TableNodeCopyWith<$Res> implements $NodeCopyWith<$Res> {
  factory $TableNodeCopyWith(TableNode value, $Res Function(TableNode) _then) = _$TableNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, int columns, bool hasHeaderRow, List<DocTableRow> rows
});




}
/// @nodoc
class _$TableNodeCopyWithImpl<$Res>
    implements $TableNodeCopyWith<$Res> {
  _$TableNodeCopyWithImpl(this._self, this._then);

  final TableNode _self;
  final $Res Function(TableNode) _then;

/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? columns = null,Object? hasHeaderRow = null,Object? rows = null,}) {
  return _then(TableNode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,columns: null == columns ? _self.columns : columns // ignore: cast_nullable_to_non_nullable
as int,hasHeaderRow: null == hasHeaderRow ? _self.hasHeaderRow : hasHeaderRow // ignore: cast_nullable_to_non_nullable
as bool,rows: null == rows ? _self._rows : rows // ignore: cast_nullable_to_non_nullable
as List<DocTableRow>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ImageNode extends Node {
  const ImageNode({required this.id, required this.assetId, this.alt, this.caption, final  String? $type}): $type = $type ?? 'image',super._();
  factory ImageNode.fromJson(Map<String, dynamic> json) => _$ImageNodeFromJson(json);

@override final  String id;
 final  String assetId;
 final  String? alt;
 final  String? caption;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageNodeCopyWith<ImageNode> get copyWith => _$ImageNodeCopyWithImpl<ImageNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageNode&&(identical(other.id, id) || other.id == id)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&(identical(other.alt, alt) || other.alt == alt)&&(identical(other.caption, caption) || other.caption == caption));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,assetId,alt,caption);

@override
String toString() {
  return 'Node.image(id: $id, assetId: $assetId, alt: $alt, caption: $caption)';
}


}

/// @nodoc
abstract mixin class $ImageNodeCopyWith<$Res> implements $NodeCopyWith<$Res> {
  factory $ImageNodeCopyWith(ImageNode value, $Res Function(ImageNode) _then) = _$ImageNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, String assetId, String? alt, String? caption
});




}
/// @nodoc
class _$ImageNodeCopyWithImpl<$Res>
    implements $ImageNodeCopyWith<$Res> {
  _$ImageNodeCopyWithImpl(this._self, this._then);

  final ImageNode _self;
  final $Res Function(ImageNode) _then;

/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? assetId = null,Object? alt = freezed,Object? caption = freezed,}) {
  return _then(ImageNode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assetId: null == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String,alt: freezed == alt ? _self.alt : alt // ignore: cast_nullable_to_non_nullable
as String?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FileNode extends Node {
  const FileNode({required this.id, required this.assetId, required this.filename, required this.mimeType, required this.sizeBytes, final  String? $type}): $type = $type ?? 'file',super._();
  factory FileNode.fromJson(Map<String, dynamic> json) => _$FileNodeFromJson(json);

@override final  String id;
 final  String assetId;
 final  String filename;
 final  String mimeType;
 final  int sizeBytes;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileNodeCopyWith<FileNode> get copyWith => _$FileNodeCopyWithImpl<FileNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FileNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileNode&&(identical(other.id, id) || other.id == id)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.sizeBytes, sizeBytes) || other.sizeBytes == sizeBytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,assetId,filename,mimeType,sizeBytes);

@override
String toString() {
  return 'Node.file(id: $id, assetId: $assetId, filename: $filename, mimeType: $mimeType, sizeBytes: $sizeBytes)';
}


}

/// @nodoc
abstract mixin class $FileNodeCopyWith<$Res> implements $NodeCopyWith<$Res> {
  factory $FileNodeCopyWith(FileNode value, $Res Function(FileNode) _then) = _$FileNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, String assetId, String filename, String mimeType, int sizeBytes
});




}
/// @nodoc
class _$FileNodeCopyWithImpl<$Res>
    implements $FileNodeCopyWith<$Res> {
  _$FileNodeCopyWithImpl(this._self, this._then);

  final FileNode _self;
  final $Res Function(FileNode) _then;

/// Create a copy of Node
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? assetId = null,Object? filename = null,Object? mimeType = null,Object? sizeBytes = null,}) {
  return _then(FileNode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assetId: null == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,mimeType: null == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String,sizeBytes: null == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
