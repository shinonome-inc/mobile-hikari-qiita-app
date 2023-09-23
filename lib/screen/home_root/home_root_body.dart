part of 'home_root_screen.dart';

class _Body extends ConsumerWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeRoootProvider = ref.watch(homeRootNotifierProvider);
    // @TODO: bottombarがタップされるたびにscreenを切り替えたい（indexが動いていない）
    print(homeRoootProvider.currentIndex);

    return IndexedStack(
      sizing: StackFit.expand,
      index: homeRoootProvider.currentIndex,
      children: const [
        Feed(title: 'Feed'),
        Tag(title: 'Tag'),
        MyPage(title: 'MyPage'),
        Settings(title: 'Settings'),
      ],
    );
  }
}
