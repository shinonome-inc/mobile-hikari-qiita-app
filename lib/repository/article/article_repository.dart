import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:qiita_app/entity/article/article.dart';

class ArticleRepository {
  Future<List<Article>> fetchArticleDataList() async {
    List<dynamic> responseDataList;
    final articleDataList = <Article>[];

    // 利用するAPIのURL
    const url = 'https://qiita.com/api/v2/items';
    final response = await Dio().get<List<dynamic>>(
      url,
      options: Options(
        headers: {
          'Authorization': 'Bearer ${dotenv.env['QIITA_API_KEY']}',
        },
      ),
    );
    if (response.statusCode == 200) {
      // null check
      if (response.data != null) {
        // responseのdataを一旦、dynamic型のListとして格納
        responseDataList = response.data as List<dynamic>;

        for (final responseData in responseDataList) {
          // Listの要素を1つ1つPerson(自作の型)に変換し、返すListに追加していく
          articleDataList
              .add(Article.fromJson(responseData as Map<String, dynamic>));
        }
      } else {
        throw Exception('Data is not exist');
      }
    } else {
      throw Exception('Failed to load sentence');
    }

    return articleDataList;
  }
}
