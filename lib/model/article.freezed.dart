// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  String get title => throw _privateConstructorUsedError; //記事のタイトル
  String get username => throw _privateConstructorUsedError; //作成者
  String get iconUrl => throw _privateConstructorUsedError; //アイコン画像
  DateTime get createdAt => throw _privateConstructorUsedError; //投稿日
  String get reactionsCount => throw _privateConstructorUsedError; //イイネ
  String get articleUrl => throw _privateConstructorUsedError; //記事のURL
  bool get isPremium => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {String title,
      String username,
      String iconUrl,
      DateTime createdAt,
      String reactionsCount,
      String articleUrl,
      bool isPremium});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? username = null,
    Object? iconUrl = null,
    Object? createdAt = null,
    Object? reactionsCount = null,
    Object? articleUrl = null,
    Object? isPremium = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reactionsCount: null == reactionsCount
          ? _value.reactionsCount
          : reactionsCount // ignore: cast_nullable_to_non_nullable
              as String,
      articleUrl: null == articleUrl
          ? _value.articleUrl
          : articleUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$_ArticleCopyWith(
          _$_Article value, $Res Function(_$_Article) then) =
      __$$_ArticleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String username,
      String iconUrl,
      DateTime createdAt,
      String reactionsCount,
      String articleUrl,
      bool isPremium});
}

/// @nodoc
class __$$_ArticleCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$_Article>
    implements _$$_ArticleCopyWith<$Res> {
  __$$_ArticleCopyWithImpl(_$_Article _value, $Res Function(_$_Article) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? username = null,
    Object? iconUrl = null,
    Object? createdAt = null,
    Object? reactionsCount = null,
    Object? articleUrl = null,
    Object? isPremium = null,
  }) {
    return _then(_$_Article(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reactionsCount: null == reactionsCount
          ? _value.reactionsCount
          : reactionsCount // ignore: cast_nullable_to_non_nullable
              as String,
      articleUrl: null == articleUrl
          ? _value.articleUrl
          : articleUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Article with DiagnosticableTreeMixin implements _Article {
  const _$_Article(
      {required this.title,
      required this.username,
      required this.iconUrl,
      required this.createdAt,
      required this.reactionsCount,
      required this.articleUrl,
      this.isPremium = false});

  factory _$_Article.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleFromJson(json);

  @override
  final String title;
//記事のタイトル
  @override
  final String username;
//作成者
  @override
  final String iconUrl;
//アイコン画像
  @override
  final DateTime createdAt;
//投稿日
  @override
  final String reactionsCount;
//イイネ
  @override
  final String articleUrl;
//記事のURL
  @override
  @JsonKey()
  final bool isPremium;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Article(title: $title, username: $username, iconUrl: $iconUrl, createdAt: $createdAt, reactionsCount: $reactionsCount, articleUrl: $articleUrl, isPremium: $isPremium)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Article'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('iconUrl', iconUrl))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('reactionsCount', reactionsCount))
      ..add(DiagnosticsProperty('articleUrl', articleUrl))
      ..add(DiagnosticsProperty('isPremium', isPremium));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Article &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.reactionsCount, reactionsCount) ||
                other.reactionsCount == reactionsCount) &&
            (identical(other.articleUrl, articleUrl) ||
                other.articleUrl == articleUrl) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, username, iconUrl,
      createdAt, reactionsCount, articleUrl, isPremium);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleCopyWith<_$_Article> get copyWith =>
      __$$_ArticleCopyWithImpl<_$_Article>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleToJson(
      this,
    );
  }
}

abstract class _Article implements Article {
  const factory _Article(
      {required final String title,
      required final String username,
      required final String iconUrl,
      required final DateTime createdAt,
      required final String reactionsCount,
      required final String articleUrl,
      final bool isPremium}) = _$_Article;

  factory _Article.fromJson(Map<String, dynamic> json) = _$_Article.fromJson;

  @override
  String get title;
  @override //記事のタイトル
  String get username;
  @override //作成者
  String get iconUrl;
  @override //アイコン画像
  DateTime get createdAt;
  @override //投稿日
  String get reactionsCount;
  @override //イイネ
  String get articleUrl;
  @override //記事のURL
  bool get isPremium;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleCopyWith<_$_Article> get copyWith =>
      throw _privateConstructorUsedError;
}
