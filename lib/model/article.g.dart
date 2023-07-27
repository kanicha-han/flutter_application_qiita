// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      page: json['page'] as int,
      perPage: json['perPage'] as int,
      query: json['query'] as String,
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      isPremium: json['isPremium'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
      'query': instance.query,
      'sprites': instance.sprites,
      'isPremium': instance.isPremium,
    };

_$_Sprites _$$_SpritesFromJson(Map<String, dynamic> json) => _$_Sprites(
      title: json['title'] as String?,
      userName: json['user_name'] as String?,
      iconUrl: json['icon_url'] as String?,
      createdAt: json['created_at'] as String?,
      reactionCount: json['reaction_count'] as String?,
      articleUrl: json['article_url'] as String?,
    );

Map<String, dynamic> _$$_SpritesToJson(_$_Sprites instance) =>
    <String, dynamic>{
      'title': instance.title,
      'user_name': instance.userName,
      'icon_url': instance.iconUrl,
      'created_at': instance.createdAt,
      'reaction_count': instance.reactionCount,
      'article_url': instance.articleUrl,
    };
