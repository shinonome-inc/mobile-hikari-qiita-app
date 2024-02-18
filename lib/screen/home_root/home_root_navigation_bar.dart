part of 'home_root_screen.dart';

class _BottomNavigationBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(homeRootNotifierProvider).currentIndex;
    final homeRootNotifier = ref.read(homeRootNotifierProvider.notifier);

    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.3),
            offset: Offset(0, -0.5),
            blurRadius: 0,
          ),
        ],
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          homeRootNotifier.changeIndex(index);
        },
        selectedLabelStyle: const TextStyle(color: Colors.lightGreen),
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/tab_icons/List.svg',
              width: 24,
              height: 24,
              // ignore: deprecated_member_use
              color: currentIndex == 0 ? Colors.lightGreen : Colors.grey,
            ),
            label: I18n().labelFeedJapanese,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/tab_icons/Tag.svg',
              width: 24,
              height: 24,
              // ignore: deprecated_member_use
              color: currentIndex == 1 ? Colors.lightGreen : Colors.grey,
            ),
            label: I18n().labelTagJapanese,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/tab_icons/User.svg',
              width: 24,
              height: 24,
              // ignore: deprecated_member_use
              color: currentIndex == 2 ? Colors.lightGreen : Colors.grey,
            ),
            label: I18n().labelMyPageJapanese,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/tab_icons/Settings.svg',
              width: 24,
              height: 24,
              // ignore: deprecated_member_use
              color: currentIndex == 3 ? Colors.lightGreen : Colors.grey,
            ),
            label: I18n().labelSettingsJapanese,
          ),
        ],
      ),
    );
  }
}
