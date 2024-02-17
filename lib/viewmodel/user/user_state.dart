import 'package:qiita_app/entity/article/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qiita_app/entity/user/user.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  UserState._();

  factory UserState._internal({
    User? nullableSource,
  }) = _Create;

  factory UserState(User? source) =>
      UserState._internal(nullableSource: source);
  factory UserState.empty() => UserState._internal();

  User get source {
    final s = nullableSource;

    if (s == null) {
      throw Exception("${source.id}: $runtimeTypeのsourceが定義されていません");
    }

    return s;
  }

  late final int id = source.id;
  late final String name = source.name;
  late final String description = source.description;
  late final int followeesCount = source.followeesCount;
  late final int followersCount = source.followersCount;
  late final String profileImageUrl = source.profileImageUrl;
}
