import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qiita_app/provider/home_root/home_root_state.dart';

final homeRootNotifierProvider =
    StateNotifierProvider<HomeRootNotifier, HomeRootScreenState>(
  (ref) => HomeRootNotifier(
    const HomeRootScreenState(
      currentIndex: 0,
    ),
  ),
);

class HomeRootNotifier extends StateNotifier<HomeRootScreenState> {
  HomeRootNotifier(HomeRootScreenState state) : super(state);
  void init() {
    state = state.copyWith(
      currentIndex: 0,
    );
  }

  void onTappedNavigationBar(int index) {
    state = state.copyWith(
      currentIndex: index,
    );
  }
}
