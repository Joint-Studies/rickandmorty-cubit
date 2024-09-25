import 'package:dio/dio.dart';
import '../../injection_container.dart';
import 'endpoints.dart';

abstract class DioClient {
  Future<dynamic> get(String endpoint);
}

class DioClientImpl implements DioClient {
  final _dio = sl<Dio>();

  @override
  Future get(String endpoint) async {
    try {
      final response = await _dio.get('${Endpoints.url}$endpoint');
      return response.data;
    } on DioException catch (e) {
      return _handleError(e);
    }
  }

  dynamic _handleError(DioException error) {
    if (error.response != null) {
      switch (error.response?.statusCode) {
        case 400:
          return 'Bad Request: ${error.response?.data}';
        case 401:
          return 'Unauthorized';
        case 403:
          return 'Forbidden';
        case 404:
          return 'Not Found';
        case 500:
          return 'Internal Server Error';
        default:
          return 'Unexpected Error: ${error.response?.statusCode}';
      }
    } else {
      if (error.type == DioExceptionType.connectionTimeout) {
        return 'Connection Timeout';
      } else if (error.type == DioExceptionType.receiveTimeout) {
        return 'Receive Timeout';
      } else if (error.type == DioExceptionType.unknown) {
        return 'Connection Error: ${error.message}';
      } else {
        return 'Unexpected Error';
      }
    }
  }
}
