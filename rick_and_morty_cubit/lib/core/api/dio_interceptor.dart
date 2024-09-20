import 'package:dio/dio.dart';
import 'package:rick_and_morty_cubit/core/api/endpoints.dart';

class DioInterceptor {
  final Dio _dio = Dio();

  DioInterceptor() {
    _dio.options.baseUrl = Endpoints.url;
  }
}
