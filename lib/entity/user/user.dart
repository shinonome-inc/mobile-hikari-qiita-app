import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: "id") //
    required int id,
    @JsonKey(name: "name") //
    required String name,
    @JsonKey(name: "description") //
    required String description,
    @JsonKey(name: "followees_count") //
    required int followeesCount,
    @JsonKey(name: "followers_count") //
    required int followersCount,
    @JsonKey(name: "profile_image_url") //
    required String profileImageUrl,
  }) = _Create;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}