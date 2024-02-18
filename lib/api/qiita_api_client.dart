import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'qiita_api_client.g.dart';

@RestApi(baseUrl: 'https://qiita.com/api/v2')
abstract class QiitaApiClient {
  factory QiitaApiClient(Dio dio, {String baseUrl}) = _QiitaApiClient;

  @GET('/items')
  Future<dynamic> fetch(
    @Header('Authorization') String authorization,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  );
}
