import 'package:dio/dio.dart';

class PictureService {
  static final Dio _dio = Dio(BaseOptions(baseUrl: 'https://picsum.photos'));

  static Future<List<dynamic>> fetchPictures({int page = 1, int limit = 10}) async {
    final response = await _dio.get('/v2/list', queryParameters: {
      'page': page,
      'limit': limit,
    });
    return response.data;
  }

  static Future<Map<String, dynamic>> fetchPictureDetail(String id) async {
    final response = await _dio.get('/id/$id/info');
    return response.data;
  }
}
