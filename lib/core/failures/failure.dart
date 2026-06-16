import 'package:news_app/core/exceptions/dio_exception.dart';

class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);
  factory ServerFailure.fromDioException(ServerException dioException) {
    return ServerFailure(dioException.message);
  }
}
