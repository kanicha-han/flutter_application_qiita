// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleState _$ArticleStateFromJson(Map<String, dynamic> json) {
  return _ArticleState.fromJson(json);
}

/// @nodoc
mixin _$ArticleState {
  ArticleList? get list => throw _privateConstructorUsedError;
  List<Article>? get articleList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleStateCopyWith<ArticleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleStateCopyWith<$Res> {
  factory $ArticleStateCopyWith(
          ArticleState value, $Res Function(ArticleState) then) =
      _$ArticleStateCopyWithImpl<$Res, ArticleState>;
  @useResult
  $Res call({ArticleList? list, List<Article>? articleList});

  $ArticleListCopyWith<$Res>? get list;
}

/// @nodoc
class _$ArticleStateCopyWithImpl<$Res, $Val extends ArticleState>
    implements $ArticleStateCopyWith<$Res> {
  _$ArticleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
    Object? articleList = freezed,
  }) {
    return _then(_value.copyWith(
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ArticleList?,
      articleList: freezed == articleList
          ? _value.articleList
          : articleList // ignore: cast_nullable_to_non_nullable
              as List<Article>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArticleListCopyWith<$Res>? get list {
    if (_value.list == null) {
      return null;
    }

    return $ArticleListCopyWith<$Res>(_value.list!, (value) {
      return _then(_value.copyWith(list: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ArticleStateCopyWith<$Res>
    implements $ArticleStateCopyWith<$Res> {
  factory _$$_ArticleStateCopyWith(
          _$_ArticleState value, $Res Function(_$_ArticleState) then) =
      __$$_ArticleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ArticleList? list, List<Article>? articleList});

  @override
  $ArticleListCopyWith<$Res>? get list;
}

/// @nodoc
class __$$_ArticleStateCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res, _$_ArticleState>
    implements _$$_ArticleStateCopyWith<$Res> {
  __$$_ArticleStateCopyWithImpl(
      _$_ArticleState _value, $Res Function(_$_ArticleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
    Object? articleList = freezed,
  }) {
    return _then(_$_ArticleState(
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ArticleList?,
      articleList: freezed == articleList
          ? _value._articleList
          : articleList // ignore: cast_nullable_to_non_nullable
              as List<Article>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleState with DiagnosticableTreeMixin implements _ArticleState {
  const _$_ArticleState({this.list, final List<Article>? articleList})
      : _articleList = articleList;

  factory _$_ArticleState.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleStateFromJson(json);

  @override
  final ArticleList? list;
  final List<Article>? _articleList;
  @override
  List<Article>? get articleList {
    final value = _articleList;
    if (value == null) return null;
    if (_articleList is EqualUnmodifiableListView) return _articleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArticleState(list: $list, articleList: $articleList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArticleState'))
      ..add(DiagnosticsProperty('list', list))
      ..add(DiagnosticsProperty('articleList', articleList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleState &&
            (identical(other.list, list) || other.list == list) &&
            const DeepCollectionEquality()
                .equals(other._articleList, _articleList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, list, const DeepCollectionEquality().hash(_articleList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleStateCopyWith<_$_ArticleState> get copyWith =>
      __$$_ArticleStateCopyWithImpl<_$_ArticleState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleStateToJson(
      this,
    );
  }
}

abstract class _ArticleState implements ArticleState {
  const factory _ArticleState(
      {final ArticleList? list,
      final List<Article>? articleList}) = _$_ArticleState;

  factory _ArticleState.fromJson(Map<String, dynamic> json) =
      _$_ArticleState.fromJson;

  @override
  ArticleList? get list;
  @override
  List<Article>? get articleList;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleStateCopyWith<_$_ArticleState> get copyWith =>
      throw _privateConstructorUsedError;
}

ArticleList _$ArticleListFromJson(Map<String, dynamic> json) {
  return _ArticleList.fromJson(json);
}

/// @nodoc
mixin _$ArticleList {
  int get count => throw _privateConstructorUsedError;
  String get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<Article> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleListCopyWith<ArticleList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleListCopyWith<$Res> {
  factory $ArticleListCopyWith(
          ArticleList value, $Res Function(ArticleList) then) =
      _$ArticleListCopyWithImpl<$Res, ArticleList>;
  @useResult
  $Res call({int count, String next, String? previous, List<Article> results});
}

/// @nodoc
class _$ArticleListCopyWithImpl<$Res, $Val extends ArticleList>
    implements $ArticleListCopyWith<$Res> {
  _$ArticleListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = null,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleListCopyWith<$Res>
    implements $ArticleListCopyWith<$Res> {
  factory _$$_ArticleListCopyWith(
          _$_ArticleList value, $Res Function(_$_ArticleList) then) =
      __$$_ArticleListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, String next, String? previous, List<Article> results});
}

/// @nodoc
class __$$_ArticleListCopyWithImpl<$Res>
    extends _$ArticleListCopyWithImpl<$Res, _$_ArticleList>
    implements _$$_ArticleListCopyWith<$Res> {
  __$$_ArticleListCopyWithImpl(
      _$_ArticleList _value, $Res Function(_$_ArticleList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = null,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$_ArticleList(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleList with DiagnosticableTreeMixin implements _ArticleList {
  const _$_ArticleList(
      {required this.count,
      required this.next,
      this.previous,
      required final List<Article> results})
      : _results = results;

  factory _$_ArticleList.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleListFromJson(json);

  @override
  final int count;
  @override
  final String next;
  @override
  final String? previous;
  final List<Article> _results;
  @override
  List<Article> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArticleList(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArticleList'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('next', next))
      ..add(DiagnosticsProperty('previous', previous))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleList &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleListCopyWith<_$_ArticleList> get copyWith =>
      __$$_ArticleListCopyWithImpl<_$_ArticleList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleListToJson(
      this,
    );
  }
}

abstract class _ArticleList implements ArticleList {
  const factory _ArticleList(
      {required final int count,
      required final String next,
      final String? previous,
      required final List<Article> results}) = _$_ArticleList;

  factory _ArticleList.fromJson(Map<String, dynamic> json) =
      _$_ArticleList.fromJson;

  @override
  int get count;
  @override
  String get next;
  @override
  String? get previous;
  @override
  List<Article> get results;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleListCopyWith<_$_ArticleList> get copyWith =>
      throw _privateConstructorUsedError;
}

NewPostPageState _$NewPostPageStateFromJson(Map<String, dynamic> json) {
  return _NewPostPageState.fromJson(json);
}

/// @nodoc
mixin _$NewPostPageState {
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewPostPageStateCopyWith<NewPostPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPostPageStateCopyWith<$Res> {
  factory $NewPostPageStateCopyWith(
          NewPostPageState value, $Res Function(NewPostPageState) then) =
      _$NewPostPageStateCopyWithImpl<$Res, NewPostPageState>;
  @useResult
  $Res call({String? title, String? body, List<String>? tags});
}

/// @nodoc
class _$NewPostPageStateCopyWithImpl<$Res, $Val extends NewPostPageState>
    implements $NewPostPageStateCopyWith<$Res> {
  _$NewPostPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewPostPageStateCopyWith<$Res>
    implements $NewPostPageStateCopyWith<$Res> {
  factory _$$_NewPostPageStateCopyWith(
          _$_NewPostPageState value, $Res Function(_$_NewPostPageState) then) =
      __$$_NewPostPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? body, List<String>? tags});
}

/// @nodoc
class __$$_NewPostPageStateCopyWithImpl<$Res>
    extends _$NewPostPageStateCopyWithImpl<$Res, _$_NewPostPageState>
    implements _$$_NewPostPageStateCopyWith<$Res> {
  __$$_NewPostPageStateCopyWithImpl(
      _$_NewPostPageState _value, $Res Function(_$_NewPostPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$_NewPostPageState(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewPostPageState
    with DiagnosticableTreeMixin
    implements _NewPostPageState {
  const _$_NewPostPageState({this.title, this.body, final List<String>? tags})
      : _tags = tags;

  factory _$_NewPostPageState.fromJson(Map<String, dynamic> json) =>
      _$$_NewPostPageStateFromJson(json);

  @override
  final String? title;
  @override
  final String? body;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewPostPageState(title: $title, body: $body, tags: $tags)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewPostPageState'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('tags', tags));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewPostPageState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, body, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewPostPageStateCopyWith<_$_NewPostPageState> get copyWith =>
      __$$_NewPostPageStateCopyWithImpl<_$_NewPostPageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewPostPageStateToJson(
      this,
    );
  }
}

abstract class _NewPostPageState implements NewPostPageState {
  const factory _NewPostPageState(
      {final String? title,
      final String? body,
      final List<String>? tags}) = _$_NewPostPageState;

  factory _NewPostPageState.fromJson(Map<String, dynamic> json) =
      _$_NewPostPageState.fromJson;

  @override
  String? get title;
  @override
  String? get body;
  @override
  List<String>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$_NewPostPageStateCopyWith<_$_NewPostPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
