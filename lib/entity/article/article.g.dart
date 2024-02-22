// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Create _$$_CreateFromJson(Map<String, dynamic> json) => _$_Create(
      id: json['id'] as String,
      title: json['title'] as String,
      likesCount: json['likes_count'] as int,
      createdAt: json['created_at'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateToJson(_$_Create instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'likes_count': instance.likesCount,
      'created_at': instance.createdAt,
      'user': instance.user,
    };
