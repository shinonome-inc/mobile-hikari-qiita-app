import 'package:flutter/material.dart';
import 'package:qiita_app/resource/intl_resource.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Center(
          child: Text(I18n().labelMyPage),
        ),
      ),
    );
  }
}
