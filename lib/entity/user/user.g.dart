// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Create _$$_CreateFromJson(Map<String, dynamic> json) => _$_Create(
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      followeesCount: json['followees_count'] as int,
      followersCount: json['followers_count'] as int,
      profileImageUrl: json['profile_image_url'] as String,
    );

Map<String, dynamic> _$$_CreateToJson(_$_Create instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'followees_count': instance.followeesCount,
      'followers_count': instance.followersCount,
      'profile_image_url': instance.profileImageUrl,
    };
