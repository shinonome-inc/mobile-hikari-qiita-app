import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:qiita_app/api/qiita_api_client.dart';
import 'package:qiita_app/entity/article/article.dart';

class ArticleRepository {
  final _qiitaApiClient = QiitaApiClient(Dio());
  final String authorization = ' Bearer ${dotenv.env['QIITA_API_KEY']}';

  Future<dynamic> fetch(int? page, int? perPage) async {
    return _qiitaApiClient.fetch(authorization, page, perPage).then((value) {
      // APIで返ってきたJSONをQiitaArticleモデルに変換
      return value
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList();
    });
  }
}
