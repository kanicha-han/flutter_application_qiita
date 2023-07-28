// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleState _$$_ArticleStateFromJson(Map<String, dynamic> json) =>
    _$_ArticleState(
      list: json['list'] == null
          ? null
          : ArticleList.fromJson(json['list'] as Map<String, dynamic>),
      articleList: (json['articleList'] as List<dynamic>?)
          ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ArticleStateToJson(_$_ArticleState instance) =>
    <String, dynamic>{
      'list': instance.list,
      'articleList': instance.articleList,
    };

_$_ArticleList _$$_ArticleListFromJson(Map<String, dynamic> json) =>
    _$_ArticleList(
      count: json['count'] as int,
      next: json['next'] as String,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ArticleListToJson(_$_ArticleList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
