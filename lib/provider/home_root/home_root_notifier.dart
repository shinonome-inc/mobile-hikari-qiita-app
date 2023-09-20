import 'package:flutter_riverpod/flutter_riverpod.dart';

class aaa {
  String screenName = "aaa";
  int index = 0;

  aaa copyWith({String? screenName, int? index}) {
    return aaa()
      ..screenName = screenName ?? this.screenName
      ..index = index ?? this.index;
  }
}

final homeRootNotifierProvider = StateNotifierProvider<HomeRootNotifier, aaa>(
    (ref) => HomeRootNotifier(aaa()));

class HomeRootNotifier extends StateNotifier<aaa> {
  HomeRootNotifier(aaa state) : super(state);
  void init() {
    state = state.copyWith(
      index: 0,
      screenName: "aaa",
    );
  }

  void onTappedNavigationBar(int index) {
    state = state.copyWith(
      index: index,
      screenName: "aaa",
    );
  }
}
