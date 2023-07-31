import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_qiita/url/url.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/api_client.dart';
import '../state/state.dart';

// State Notifier
class NewPostPageController extends StateNotifier<NewPostPageState> {
  NewPostPageController() : super(NewPostPageState());

  void updateTitle(String value) {
    state = state.copyWith(title: value);
  }

  void updateBody(String value) {
    state = state.copyWith(body: value);
  }

  void updateTags(String value) {
    state = state.copyWith(tags: value.split(','));
  }
}

// State Provider
final newPostPageStateProvider =
    StateNotifierProvider<NewPostPageController, NewPostPageState>(
        (ref) => NewPostPageController());

class NewPostPage extends ConsumerWidget {
  NewPostPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('新規投稿')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              //タイトル
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'タイトル',
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) {
                  ref
                      .read(newPostPageStateProvider.notifier)
                      .updateTitle(value ?? '');
                },
              ),
              const SizedBox(height: 16.0),
              //タグ
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'タグ',
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) {
                  ref
                      .read(newPostPageStateProvider.notifier)
                      .updateTags(value ?? '');
                },
              ),
              const SizedBox(height: 16.0),
              //本文
              TextFormField(
                decoration: const InputDecoration(
                  labelText: '本文',
                  border: OutlineInputBorder(),
                ),
                maxLines: 10,
                onSaved: (value) {
                  ref
                      .read(newPostPageStateProvider.notifier)
                      .updateBody(value ?? '');
                },
                validator: (value) =>
                    value?.isEmpty == true ? 'Body is required' : null,
              ),

              const SizedBox(height: 24.0),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      final state = ref.read(newPostPageStateProvider);
                      // qiitaのアクセストークン
                      final token = '6928607654fffb6ea8e6aa2843456c6a4093802d';
                      // userID
                      final userId = 'himmel.373';

                      String userUrl = URLConst.baseUrl + '/users/' + userId;

                      final dio = Dio();

                      dio.options.headers['Authorization'] = 'Bearer $token';
                      dio.interceptors.add(
                        InterceptorsWrapper(
                          onRequest: (RequestOptions options,
                              RequestInterceptorHandler handler) {
                            print('Request data: ${options.data}');
                            print('Request headers: ${options.headers}');
                            print('Request url: ${options.uri}'); // リクエストURLを出力
                            return handler.next(options);
                          },
                          onResponse: (Response response,
                              ResponseInterceptorHandler handler) {
                            print('Response data: ${response.data}');
                            print('Response headers: ${response.headers}');
                            return handler.next(response);
                          },
                          onError:
                              (DioError e, ErrorInterceptorHandler handler) {
                            print('Error: ${e.message}');
                            print('Error info: ${e.response?.data}');
                            return handler.next(e);
                          },
                        ),
                      );

                      final apiClient = QiitaApiClient(dio);
                      try {
                        // ユーザー情報を取得
                        final user = await apiClient.getUser(userId);
                        print('User info: ${user.toJson()}'); // 取得したユーザー情報を出力

                        // 記事を投稿
                        final response = await apiClient.createArticle({
                          'body': state.body,
                          'coediting': false,
                          'private': false,
                          'tags': state.tags
                                  ?.map((tag) => {
                                        'name': tag.trim(),
                                        'versions': ['0.0.1']
                                      })
                                  .toList() ??
                              [],
                          'title': state.title,
                          'tweet': false,
                          'slide': false,
                        });
                        print('Successfully posted');
                      } catch (e) {
                        print('Failed to post: $e');
                      }
                    }
                  },
                  child: Text('投稿'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
