import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qiita_app/provider/home_root/home_root_notifier.dart';

final homeRootNotifierProvider = StateNotifierProvider<HomeRootNotifier, aaa>(
    (ref) => HomeRootNotifier(aaa()));

class CustomBottomNavigationBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(homeRootNotifierProvider);
    final homeRootNotifier = ref.watch(homeRootNotifierProvider.notifier);

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: index.index,
      onTap: homeRootNotifier.onTappedNavigationBar,
      selectedLabelStyle: const TextStyle(color: Colors.lightGreen),
      unselectedLabelStyle: const TextStyle(color: Colors.grey),
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/List.svg',
            width: 24,
            height: 24,
            // ignore: deprecated_member_use
            color: index.index == 0 ? Colors.lightGreen : Colors.grey,
          ),
          label: "Feed",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/Tag.svg',
            width: 24,
            height: 24,
            // ignore: deprecated_member_use
            color: index.index == 1 ? Colors.lightGreen : Colors.grey,
          ),
          label: 'Tag',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/User.svg',
            width: 24,
            height: 24,
            // ignore: deprecated_member_use
            color: index.index == 2 ? Colors.lightGreen : Colors.grey,
          ),
          label: 'User',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/Settings.svg',
            width: 24,
            height: 24,
            // ignore: deprecated_member_use
            color: index.index == 3 ? Colors.lightGreen : Colors.grey,
          ),
          label: 'Settings',
        ),
      ],
    );
  }
}
