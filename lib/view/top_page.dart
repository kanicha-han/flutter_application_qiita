import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../notifier/quiita_notifier.dart';

class TopPage extends ConsumerWidget {
  const TopPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articleListProvider);
    print('記事の状態をウォッチ');

    return Scaffold(
      body: state.when(
        data: (articles) {
          print('記事の情報を取得');
          return ListView.builder(
            itemCount: articles.articleList.length,
            itemBuilder: (context, index) {
              final article = articles.articleList[index];
              return ListTile(
                title: Text(article.sprites.title ?? 'No Title'),
                subtitle: Text(article.sprites.userName ?? 'No Username'),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(article.sprites.iconUrl ?? ''),
                ),
              );
            },
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
