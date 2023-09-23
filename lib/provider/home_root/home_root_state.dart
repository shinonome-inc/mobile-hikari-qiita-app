import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_root_state.freezed.dart';

@freezed
class HomeRootScreenState with _$HomeRootScreenState {
  const factory HomeRootScreenState({
    required int currentIndex,
  }) = _Create;
}
