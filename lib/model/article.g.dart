// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      id: json['id'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      likesCount: json['likes_count'] as int,
      user: Sprites.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'likes_count': instance.likesCount,
      'user': instance.user,
    };

_$_Sprites _$$_SpritesFromJson(Map<String, dynamic> json) => _$_Sprites(
      id: json['id'] as String,
      profileImageUrl: json['profile_image_url'] as String,
    );

Map<String, dynamic> _$$_SpritesToJson(_$_Sprites instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile_image_url': instance.profileImageUrl,
    };

_$_ArticlePayload _$$_ArticlePayloadFromJson(Map<String, dynamic> json) =>
    _$_ArticlePayload(
      body: json['required'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_ArticlePayloadToJson(_$_ArticlePayload instance) =>
    <String, dynamic>{
      'required': instance.body,
      'tags': instance.tags,
      'title': instance.title,
    };
