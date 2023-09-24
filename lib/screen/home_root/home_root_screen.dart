import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qiita_app/provider/home_root/home_root_notifier.dart';
import 'package:qiita_app/screen/home_root/home_root_body.dart';

part 'home_root_navigation_bar.dart';

class HomeRootScreen extends ConsumerWidget {
  const HomeRootScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeRootProvider =
        StateNotifierProvider<HomeRootNotifier, ScreenType>(
      (ref) => HomeRootNotifier(),
    );
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
            // showScreenNameにtitleがかわるようにする
            title: Text(ref.watch(homeRootProvider.notifier).showScreenName()),
          ),
          body: const Body(),
          //  _pages[index.index],
          bottomNavigationBar: _BottomNavigationBar()),
    );
  }
}
