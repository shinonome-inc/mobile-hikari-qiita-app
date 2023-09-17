part of 'home_root_screen.dart';

class _Body extends ConsumerWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(homeRootNotifierProvider);
    print(index.index);

    return IndexedStack(
      sizing: StackFit.expand,
      index: index.index,
      children: const [
        Feed(title: 'Feed'),
        Tag(title: 'Tag'),
        MyPage(title: 'MyPage'),
        Settings(title: 'Settings'),
      ],
    );
  }
}
