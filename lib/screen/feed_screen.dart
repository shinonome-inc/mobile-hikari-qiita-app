import 'package:flutter/material.dart';
import 'package:qiita_app/resource/intl_resource.dart';

class Feed extends StatelessWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(I18n().labelFeed),
      ),
    );
  }
}
