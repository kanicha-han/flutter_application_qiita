import 'package:flutter_application_qiita/model/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

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
