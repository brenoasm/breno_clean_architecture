import 'http_request.dart';

class HttpError implements Exception {
  final dynamic data;
  final int statusCode;
  final HttpRequest httpRequest;

  HttpError({
    this.data,
    required this.statusCode,
    required this.httpRequest,
  });
}
