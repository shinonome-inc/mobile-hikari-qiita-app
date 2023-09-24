part of 'home_root_screen.dart';

class Body extends ConsumerWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeRootProvider = ref.watch(homeRootNotifierProvider);
    // @TODO: bottombarがタップされるたびにscreenを切り替えたい（indexが動いていない）
    print(homeRootProvider.currentIndex);

    return IndexedStack(
      sizing: StackFit.expand,
      index: homeRootProvider.currentIndex,
      children: const [
        Feed(title: 'Feed'),
        Tag(title: 'Tag'),
        MyPage(title: 'MyPage'),
        Settings(title: 'Settings'),
      ],
    );
  }
}
