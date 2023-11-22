import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio(BaseOptions(
    baseUrl: 'http://api.themoviedb.org/3/person',
    receiveDataWhenStatusError: true,
  ));

  static Future<Response> getData( {
    required String url,
    Map<String, dynamic>? query,
    String lang = "en",
    String? token,
  }) async {
    dio.options.headers = {
      'lang': lang,
      'Content-Type': 'application/json',
      'Authorization': token??'',
    };
    return await dio.get(url, queryParameters: query);
  }

  static Future<Response> postData(
      {required String url,
        String lang = "en",
        String? token,
        Map<String, dynamic>? query,
        required Map<String, dynamic> data}) async {
    dio.options.headers = {
      'lang': lang,
      'Content-Type': 'application/json',
      'Authorization': token??'',
    };
    return await dio.post(url, queryParameters: query, data: data);
  }
}
