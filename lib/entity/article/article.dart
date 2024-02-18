import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qiita_app/entity/user/user.dart';

part 'article.g.dart';
part 'article.freezed.dart';

@freezed
class Article with _$Article {
  const factory Article({
    @JsonKey(name: "id") //
    required int id,
    @JsonKey(name: "title") //
    required String title,
    @JsonKey(name: "description") //
    required String description,
    @JsonKey(name: "likes_count") //
    required int likesCount,
    @JsonKey(name: "created_at") //
    required String createdAt,
    @JsonKey(name: "user") //
    required User user,
  }) = _Create;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
