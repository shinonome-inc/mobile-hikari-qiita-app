import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qiita_app/provider/home_root/home_root_state.dart';

final homeRootProvider =
    StateNotifierProvider<HomeRootNotifier, HomeRootScreenState>(
  (ref) => HomeRootNotifier(),
);

class HomeRootNotifier extends StateNotifier<HomeRootScreenState> {
  HomeRootNotifier() : super(const HomeRootScreenState(currentIndex: 0));
  void changeScreen(int index) {
    state = state.copyWith(currentIndex: index);
  }
}
