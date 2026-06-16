class ServerException implements Exception {
  const ServerException({required this.message});
  final String message;
}

class ConnectionTimeoutException extends ServerException {
  const ConnectionTimeoutException() : super(message: 'Connection timeout');
}

class SendTimeoutException extends ServerException {
  const SendTimeoutException() : super(message: 'Send timeout');
}

class ReceiveTimeoutException extends ServerException {
  const ReceiveTimeoutException() : super(message: 'Receive timeout');
}

class BadCertificateException extends ServerException {
  const BadCertificateException() : super(message: 'Bad certificate');
}

class BadResponseException extends ServerException {
  const BadResponseException() : super(message: 'Bad response');
}

class RequestCancelledException extends ServerException {
  const RequestCancelledException() : super(message: 'Request cancelled');
}

class NoInternetConnectionException extends ServerException {
  const NoInternetConnectionException()
    : super(message: 'No internet connection');
}

class UnknownException extends ServerException {
  const UnknownException() : super(message: 'Unknown error');
}
