import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import '../notifier/quiita_notifier.dart';
import 'new_post.dart';

class TopPage extends ConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  Future<void> _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articleListProvider);
    print('記事の状態をウォッチ');

    return Scaffold(
      appBar: AppBar(title: Text('記事一覧')),
      body: state.when(
        data: (articleState) {
          final articles = articleState.articleList;
          print('記事の情報を取得');
          return ListView.builder(
            itemCount: articles?.length ?? 0,
            itemBuilder: (context, index) {
              final article = articles![index];
              return ListTile(
                title: Text(article.title ?? 'No Title'),
                subtitle: Text(article.user.id ?? 'No Username'),
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(article.user.profileImageUrl ?? ''),
                ),
                onTap: () => _launchURL(article.url ?? ''),
              );
            },
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewPostPage()),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
