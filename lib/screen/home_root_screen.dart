import 'package:flutter/material.dart';
import 'package:qiita_app/screen/feed.dart';
import 'package:qiita_app/screen/my_page.dart';
import 'package:qiita_app/screen/settings.dart';
import 'package:qiita_app/screen/tag.dart';
import 'package:qiita_app/view/bottom_navigation_bar.dart';

class Pages extends StatefulWidget {
  const Pages({Key? key, required String title}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _QiitaAppState createState() => _QiitaAppState();
}

class _QiitaAppState extends State<Pages> {
  int _currentIndex = 0;
  String screenName = "Feed";

  final List<Widget> _pages = [
    const Feed(title: 'Feed'),
    const Tag(title: 'Tag'),
    const MyPage(title: 'MyPage'),
    const Settings(title: 'Settings'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      screenName = _pages[index].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
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
          title: Text(screenName),
        ),
        body: _pages[_currentIndex],
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
