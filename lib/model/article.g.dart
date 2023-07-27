// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      title: json['title'] as String,
      username: json['username'] as String,
      iconUrl: json['iconUrl'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      reactionsCount: json['reactionsCount'] as String,
      articleUrl: json['articleUrl'] as String,
      isPremium: json['isPremium'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'title': instance.title,
      'username': instance.username,
      'iconUrl': instance.iconUrl,
      'createdAt': instance.createdAt.toIso8601String(),
      'reactionsCount': instance.reactionsCount,
      'articleUrl': instance.articleUrl,
      'isPremium': instance.isPremium,
    };
