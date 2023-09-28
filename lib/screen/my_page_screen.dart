import 'package:flutter/material.dart';
import 'package:qiita_app/resource/intl_resource.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(I18n().labelMyPage);
  }
}
