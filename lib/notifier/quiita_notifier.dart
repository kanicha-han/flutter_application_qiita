import 'package:flutter_application_qiita/model/article.dart';
import 'package:flutter_application_qiita/state/state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repository/repository.dart';

//プロバイダを作成
final articleListProvider = FutureProvider<List<Article>>((ref) async {
  final repository = Repository();
  return await repository.fetchList();
});

class ArticleListNotifier extends StateNotifier<AsyncValue<ArticleState>> {
  final Repository _repository;

  ArticleListNotifier(this._repository) : super(AsyncValue.loading()) {
    fetchArticles(); // コンストラクタで fetchArticles() を呼び出す
  }
  Future<void> fetchArticles() async {
    try {
      List<Article> articles = await _repository.fetchList();
      state = AsyncValue.data(ArticleState(articles: articles));
    } catch (e) {
      // エラー処理
      // state = AsyncValue.error();
    }
  }
}
