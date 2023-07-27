import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

//freezedでクラスの作成
@freezed
class Article with _$Article {
  // 記事情報に必要なプロパティを指定
  const factory Article({
    required int page,
    required int perPage,
    required String query,
    required Sprites sprites,
    @Default(false) bool isPremium,
  }) = _Article;

  // json形式で受け取るためのコードを最後に追加
  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}

@freezed
class Sprites with _$Sprites {
  const factory Sprites({
    @JsonKey(name: 'title') String? title, // 記事のタイトル
    @JsonKey(name: 'user_name') String? userName, // 作成者
    @JsonKey(name: 'icon_url') String? iconUrl, // アイコン画像
    @JsonKey(name: 'created_at') String? createdAt, // 投稿日
    @JsonKey(name: 'reaction_count') String? reactionCount, // イイネ
    @JsonKey(name: 'article_url') String? articleUrl, // 記事のURL
    // More properties...
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}
