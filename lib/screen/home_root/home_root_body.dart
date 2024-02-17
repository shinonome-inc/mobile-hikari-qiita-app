import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qiita_app/provider/home_root/home_root_notifier.dart';
import 'package:qiita_app/screen/feed_screen.dart';
import 'package:qiita_app/screen/my_page_screen.dart';
import 'package:qiita_app/screen/settings_screen.dart';
import 'package:qiita_app/screen/tag_screen.dart';

class HomeRootBody extends ConsumerWidget {
  const HomeRootBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(homeRootProvider).currentIndex;
    return IndexedStack(index: currentIndex, children: const [
      Feed(),
      Tag(),
      MyPage(),
      Settings(),
    ]);
  }
}
