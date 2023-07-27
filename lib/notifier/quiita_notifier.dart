import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_qiita/model/article.dart';
import 'package:flutter_application_qiita/state/state.dart';
import '../repository/repository.dart';

class ArticleListNotifier extends StateNotifier<AsyncValue<ArticleState>> {
  final Repository _repository;

  ArticleListNotifier(this._repository) : super(AsyncValue.loading()) {
    fetchArticles();
  }

  Future<void> fetchArticles() async {
    try {
      List<Article> articles = await _repository.fetchList();
      state = AsyncValue.data(ArticleState(articleList: articles));
    } catch (error, stack) {
      state = AsyncValue.error(error, stack);
    }
  }
}

final articleListProvider =
    StateNotifierProvider<ArticleListNotifier, AsyncValue<ArticleState>>((ref) {
  final repository = Repository();
  return ArticleListNotifier(repository);
});
