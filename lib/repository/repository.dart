import 'package:dio/dio.dart';
import 'package:flutter_application_qiita/api/api_client.dart';
import 'package:flutter_application_qiita/model/article.dart';

class Repository {
  final QiitaApiClient _apiClient;

  Repository() : _apiClient = QiitaApiClient(Dio());

  Future<List<Article>> fetchList() async {
    try {
      final articles = await _apiClient.fetchArticles();
      return articles; // メソッドの返り値をList<Article>に修正
    } catch (e) {
      // エラー処理
      rethrow;
    }
  }
}
