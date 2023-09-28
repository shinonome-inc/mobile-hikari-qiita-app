part of 'home_root_screen.dart';

class _BottomNavigationBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screen = ref.watch(homeRootProvider);
    int screenIndex = screen.index;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: screen.index,
      onTap: (index) {
        ref.read(homeRootProvider.notifier).changeScreen(index);
        screenIndex = index;
      },
      selectedLabelStyle: const TextStyle(color: Colors.lightGreen),
      unselectedLabelStyle: const TextStyle(color: Colors.grey),
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/List.svg',
            width: 24,
            height: 24,
            // ignore: deprecated_member_use
            color: screenIndex == 0 ? Colors.lightGreen : Colors.grey,
          ),
          label: I18n().labelFeedJapanese,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/Tag.svg',
            width: 24,
            height: 24,
            // ignore: deprecated_member_use
            color: screenIndex == 1 ? Colors.lightGreen : Colors.grey,
          ),
          label: I18n().labelTagJapanese,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/User.svg',
            width: 24,
            height: 24,
            // ignore: deprecated_member_use
            color: screenIndex == 2 ? Colors.lightGreen : Colors.grey,
          ),
          label: I18n().labelMyPageJapanese,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/Settings.svg',
            width: 24,
            height: 24,
            // ignore: deprecated_member_use
            color: screenIndex == 3 ? Colors.lightGreen : Colors.grey,
          ),
          label: I18n().labelSettingsJapanese,
        ),
      ],
    );
  }
}
