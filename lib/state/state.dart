import 'package:flutter_application_qiita/model/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

//記事のリストを表示するためのウィジェットの状態
@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState({
    required List<Article> articles,
  }) = _ArticleState;
}
