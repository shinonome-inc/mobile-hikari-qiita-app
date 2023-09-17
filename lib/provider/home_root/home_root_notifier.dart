import 'package:flutter_riverpod/flutter_riverpod.dart';

class aaa {
  String screenName = "aaa";
  int index = 0;
}

class HomeRootNotifier extends StateNotifier<aaa> {
  HomeRootNotifier(super.state);

  void onTappedNavigationBar(int index) {
    state = aaa()
      ..index = index
      ..screenName = "aaa";
  }
}
