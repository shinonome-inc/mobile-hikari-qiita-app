import 'package:qiita_app/provider/home_root/home_root_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_root_notifier.g.dart';

@riverpod
class HomeRootNotifier extends _$HomeRootNotifier {
  @override
  HomeRootScreenState build() {
    return const HomeRootScreenState(currentIndex: 0);
  }

  void changeIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }
}
