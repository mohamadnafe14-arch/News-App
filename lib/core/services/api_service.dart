import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:news_app/core/exceptions/dio_exception.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});
  Future<dynamic> get(String url) async {
    try {
      final response = await dio.get(url);
      log(response.data.toString());
      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
          throw ConnectionTimeoutException();
        case DioExceptionType.sendTimeout:
          throw SendTimeoutException();
        case DioExceptionType.receiveTimeout:
          throw ReceiveTimeoutException();
        case DioExceptionType.badCertificate:
          throw BadCertificateException();
        case DioExceptionType.badResponse:
          throw BadResponseException();
        case DioExceptionType.cancel:
          throw RequestCancelledException();
        case DioExceptionType.connectionError:
          throw NoInternetConnectionException();
        default:
          throw UnknownException();
      }
    }
  }
}
