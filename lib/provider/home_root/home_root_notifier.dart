import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ScreenType { feed, tag, user, settings }

final homeRootProvider = StateNotifierProvider<HomeRootNotifier, ScreenType>(
  (ref) => HomeRootNotifier(),
);

class HomeRootNotifier extends StateNotifier<ScreenType> {
  HomeRootNotifier() : super(ScreenType.feed);
  void changeScreen(int showCurrentIndex) {
    state = ScreenType.values[showCurrentIndex];
  }

  // screenTypeに応じてindexを返す
  int showCurrentIndex(ScreenType screenType) {
    switch (screenType) {
      case ScreenType.feed:
        return 0;
      case ScreenType.tag:
        return 1;
      case ScreenType.user:
        return 2;
      case ScreenType.settings:
        return 3;
    }
  }
}
