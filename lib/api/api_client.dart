import 'package:flutter_application_qiita/url/url.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import '../model/article.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: URLConst.baseUrl)
abstract class QiitaApiClient {
  factory QiitaApiClient(Dio dio, {String baseUrl}) = _QiitaApiClient;

  @POST('items')
  Future<Article> createArticle(@Body() Map<String, dynamic> payload);

  @GET('items')
  Future<List<Article>> fetchArticles();

  @GET('users/{userId}')
  Future<User> getUser(@Path() String userId);
}

class User {
  final String id;
  final String name;
  final String profileImageUrl;

  User({required this.id, required this.name, required this.profileImageUrl});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      profileImageUrl: json['profile_image_url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'profile_image_url': profileImageUrl,
    };
  }
}
