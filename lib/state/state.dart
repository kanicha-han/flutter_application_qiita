import 'package:flutter/foundation.dart';
import 'package:flutter_application_qiita/model/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';
part 'state.g.dart';

@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState({
    ArticleList? list,
    List<Article>? articleList,
  }) = _ArticleState;
  factory ArticleState.fromJson(Map<String, dynamic> json) =>
      _$ArticleStateFromJson(json);
}

@freezed
class ArticleList with _$ArticleList {
  const factory ArticleList({
    required int count,
    required String next,
    String? previous,
    required List<Article> results,
  }) = _ArticleList;

  factory ArticleList.fromJson(Map<String, dynamic> json) =>
      _$ArticleListFromJson(json);
}

//記事の新規投稿のstate
@freezed
class NewPostPageState with _$NewPostPageState {
  const factory NewPostPageState({
    String? title,
    String? body,
    List<String>? tags,
  }) = _NewPostPageState;
  factory NewPostPageState.fromJson(Map<String, dynamic> json) =>
      _$NewPostPageStateFromJson(json);
}
