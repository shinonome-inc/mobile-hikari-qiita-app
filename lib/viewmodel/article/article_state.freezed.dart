// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleState {
  Article? get nullableSource => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleStateCopyWith<ArticleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleStateCopyWith<$Res> {
  factory $ArticleStateCopyWith(
          ArticleState value, $Res Function(ArticleState) then) =
      _$ArticleStateCopyWithImpl<$Res, ArticleState>;
  @useResult
  $Res call({Article? nullableSource});

  $ArticleCopyWith<$Res>? get nullableSource;
}

/// @nodoc
class _$ArticleStateCopyWithImpl<$Res, $Val extends ArticleState>
    implements $ArticleStateCopyWith<$Res> {
  _$ArticleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nullableSource = freezed,
  }) {
    return _then(_value.copyWith(
      nullableSource: freezed == nullableSource
          ? _value.nullableSource
          : nullableSource // ignore: cast_nullable_to_non_nullable
              as Article?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArticleCopyWith<$Res>? get nullableSource {
    if (_value.nullableSource == null) {
      return null;
    }

    return $ArticleCopyWith<$Res>(_value.nullableSource!, (value) {
      return _then(_value.copyWith(nullableSource: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateCopyWith<$Res> implements $ArticleStateCopyWith<$Res> {
  factory _$$_CreateCopyWith(_$_Create value, $Res Function(_$_Create) then) =
      __$$_CreateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Article? nullableSource});

  @override
  $ArticleCopyWith<$Res>? get nullableSource;
}

/// @nodoc
class __$$_CreateCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res, _$_Create>
    implements _$$_CreateCopyWith<$Res> {
  __$$_CreateCopyWithImpl(_$_Create _value, $Res Function(_$_Create) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nullableSource = freezed,
  }) {
    return _then(_$_Create(
      nullableSource: freezed == nullableSource
          ? _value.nullableSource
          : nullableSource // ignore: cast_nullable_to_non_nullable
              as Article?,
    ));
  }
}

/// @nodoc

class _$_Create extends _Create {
  _$_Create({this.nullableSource}) : super._();

  @override
  final Article? nullableSource;

  @override
  String toString() {
    return 'ArticleState._internal(nullableSource: $nullableSource)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Create &&
            (identical(other.nullableSource, nullableSource) ||
                other.nullableSource == nullableSource));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nullableSource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateCopyWith<_$_Create> get copyWith =>
      __$$_CreateCopyWithImpl<_$_Create>(this, _$identity);
}

abstract class _Create extends ArticleState {
  factory _Create({final Article? nullableSource}) = _$_Create;
  _Create._() : super._();

  @override
  Article? get nullableSource;
  @override
  @JsonKey(ignore: true)
  _$$_CreateCopyWith<_$_Create> get copyWith =>
      throw _privateConstructorUsedError;
}
