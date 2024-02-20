import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qiita_app/entity/user/user.dart';

part 'article.g.dart';
part 'article.freezed.dart';

@freezed
class Article with _$Article {
  Article._();

  factory Article({
    @JsonKey(name: 'id') //
    required String id,
    @JsonKey(name: 'title') //
    required String title,
    @JsonKey(name: 'likes_count') //
    required int likesCount,
    @JsonKey(name: 'created_at') //
    required String createdAt,
    @JsonKey(name: 'user') //
    required User user,
  }) = _Create;

  String get formattedCreatedAt {
    final dateTime = DateTime.parse(createdAt);
    // Format the date as needed (e.g., 'yyyy/MM/dd')
    final formattedDate = "${dateTime.year}/${dateTime.month}/${dateTime.day}";
    return formattedDate;
  }

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
