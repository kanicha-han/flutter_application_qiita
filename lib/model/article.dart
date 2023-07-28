import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const factory Article({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'likes_count') required int likesCount,
    required Sprites user,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}

@freezed
class Sprites with _$Sprites {
  const factory Sprites({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'profile_image_url') required String profileImageUrl,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}

@freezed
class ArticlePayload with _$ArticlePayload {
  const factory ArticlePayload({
    @JsonKey(name: 'required') required String body, //本文
    @JsonKey(name: 'tags') required List<String> tags, //記事についたタグ一覧
    @JsonKey(name: 'title') required String title, //記事のタイトル
  }) = _ArticlePayload;

  factory ArticlePayload.fromJson(Map<String, dynamic> json) =>
      _$ArticlePayloadFromJson(json);
}
