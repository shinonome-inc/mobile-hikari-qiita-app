import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qiita_app/provider/home_root/home_root_notifier.dart';
import 'package:qiita_app/screen/feed_screen.dart';
import 'package:qiita_app/screen/my_page_screen.dart';
import 'package:qiita_app/screen/settings_screen.dart';
import 'package:qiita_app/screen/tag_screen.dart';

class Body extends ConsumerWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screen = ref.watch(homeRootProvider);
    final index = ref.watch(homeRootProvider.notifier).showCurrentIndex(screen);
    return IndexedStack(index: index, children: const [
      Feed(title: 'a'),
      Tag(title: 'a'),
      MyPage(title: 'a'),
      Settings(title: 'a')
    ]);
  }
}
