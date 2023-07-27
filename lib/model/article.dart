import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

//freezedでクラスの作成
@freezed
class Article with _$Article {
  //記事情報に必要なプロパティを指定
  const factory Article({
    required String title, //記事のタイトル
    required String username, //作成者
    required String iconUrl, //アイコン画像
    required DateTime createdAt, //投稿日
    required String reactionsCount, //イイネ
    required String articleUrl, //記事のURL

    @Default(false) bool isPremium,
  }) = _Article;

//json形式で受け取るためのコードを最後に追加
  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
