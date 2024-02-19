import 'package:qiita_app/entity/article/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qiita_app/entity/user/user.dart';

part 'article_state.freezed.dart';

@freezed
class ArticleState with _$ArticleState {
  ArticleState._();

  factory ArticleState._internal({
    Article? nullableSource,
  }) = _Create;

  factory ArticleState(Article? source) =>
      ArticleState._internal(nullableSource: source);
  factory ArticleState.empty() => ArticleState._internal();

  Article get source {
    final s = nullableSource;

    if (s == null) {
      throw Exception("${source.id}: $runtimeTypeのsourceが定義されていません");
    }

    return s;
  }

  late final String id = source.id;
  late final String title = source.title;
  late final int likesCount = source.likesCount;
  late final String createdAt = source.createdAt;
  late final User user = source.user;
}
