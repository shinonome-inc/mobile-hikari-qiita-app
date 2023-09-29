part of 'home_root_screen.dart';

class _BottomNavigationBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(homeRootProvider).currentIndex;

    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.grey),
        ),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          ref.read(homeRootProvider.notifier).changeScreen(index);
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
              color: currentIndex == 0 ? Colors.lightGreen : Colors.grey,
            ),
            label: I18n().labelFeedJapanese,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/Tag.svg',
              width: 24,
              height: 24,
              // ignore: deprecated_member_use
              color: currentIndex == 1 ? Colors.lightGreen : Colors.grey,
            ),
            label: I18n().labelTagJapanese,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/User.svg',
              width: 24,
              height: 24,
              // ignore: deprecated_member_use
              color: currentIndex == 2 ? Colors.lightGreen : Colors.grey,
            ),
            label: I18n().labelMyPageJapanese,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/Settings.svg',
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
