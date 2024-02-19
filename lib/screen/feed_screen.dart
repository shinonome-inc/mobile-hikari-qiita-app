import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qiita_app/provider/article/article.dart';

class Feed extends ConsumerWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articleDataList = ref.watch(articleDataListFutureProvider);

    return Scaffold(
      body: Center(
          child: articleDataList.when(
              data: (data) => Column(
                    children: [
                      const Text('データを取得しました'),
                      Text(data.toString()),
                    ],
                  ),
              error: (error, _) => Text(error.toString()),
              loading: () => const CircularProgressIndicator())),
    );
  }
}
