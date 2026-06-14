import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});
  Future<dynamic> get(String url) async {
    try {
      final response = await dio.get(url);
      return response.data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
