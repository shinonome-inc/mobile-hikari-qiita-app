import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qiita_app/entity/article/article.dart';
import 'package:qiita_app/repository/article/article_repository.dart';

final articleDataListFutureProvider =
    FutureProvider.autoDispose<List<Article>>((ref) async {
  final articleRepository = ArticleRepository();
  final articleDataList = await articleRepository.fetchArticleDataList();
  return articleDataList;
});
