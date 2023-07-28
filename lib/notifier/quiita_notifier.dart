import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_qiita/model/article.dart';

import '../state/state.dart';

final articleListProvider = FutureProvider<ArticleState>((ref) async {
  final dio = Dio();
  final response = await dio.get('https://qiita.com/api/v2/items');
  final data = response.data as List;
  final articles = data.map((json) => Article.fromJson(json)).toList();
  return ArticleState(articleList: articles);
});
