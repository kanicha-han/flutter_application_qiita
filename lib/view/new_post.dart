import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
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
              // TextFormField(
              //   decoration: const InputDecoration(
              //     labelText: 'タグ',
              //     border: OutlineInputBorder(),
              //   ),
              //   onSaved: (value) {
              //     ref
              //         .read(newPostPageStateProvider.notifier)
              //         .updateTags(value ?? '');
              //   },
              // ),
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
                      //qiitaのアクセストークン
                      final token = 'be15cdc9733477a96d9952950aaed767ff6ed300';
                      final dio = Dio();
                      dio.options.headers['Authorization'] = 'Bearer $token';
                      final apiClient = QiitaApiClient(dio);
                      try {
                        final response = await apiClient.createArticle({
                          'body': state.body,
                          'title': state.title,
                          'tags': state.tags
                                  ?.map((tag) => {
                                        'name': tag,
                                        'versions': ['0.0.0']
                                      })
                                  .toList() ??
                              [],
                          'private': false,
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
