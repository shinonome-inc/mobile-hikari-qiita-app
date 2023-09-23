import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qiita_app/provider/home_root/home_root_notifier.dart';
import 'package:qiita_app/provider/home_root/home_root_state.dart';
import 'package:qiita_app/screen/feed.dart';
import 'package:qiita_app/screen/my_page.dart';
import 'package:qiita_app/screen/settings.dart';
import 'package:qiita_app/screen/tag.dart';
import 'package:qiita_app/view/bottom_navigation_bar/bottom_navigation_bar.dart';

part 'home_root_body.dart';

final homeRootNotifierProvider =
    StateNotifierProvider<HomeRootNotifier, HomeRootScreenState>(
        (ref) => HomeRootNotifier(const HomeRootScreenState(currentIndex: 0)));

class HomeRootScreen extends ConsumerWidget {
  const HomeRootScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Qiita App',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: Colors.white),
        ),
      ),
      home: Scaffold(
          appBar: AppBar(
            // @TODO: screenNameを動的に切り替えたい
            title: const Text("aaa"),
          ),
          body: const _Body(),
          //  _pages[index.index],
          bottomNavigationBar: CustomBottomNavigationBar()),
    );
  }
}
