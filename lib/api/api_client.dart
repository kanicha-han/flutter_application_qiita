import 'package:flutter_application_qiita/url/url.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import '../model/article.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: URLConst.baseUrl)
abstract class QiitaApiClient {
  factory QiitaApiClient(Dio dio, {String baseUrl}) = _QiitaApiClient;

  @GET('/articles')
  Future<List<Article>> fetchArticles();

  @POST('/api/v2/items')
  Future<Article> createArticle(@Body() Map<String, dynamic> payload);
}
