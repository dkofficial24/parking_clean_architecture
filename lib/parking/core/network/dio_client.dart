import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:parking_demo/parking/core/constant/api_endpoints.dart';

@lazySingleton
class DioClient {
  DioClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        responseType: ResponseType.json,
      ),
    );

    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(
          error: true,
          request: true,
          requestBody: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: true,
        ),
      );
    }

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (option, handler) {
          option.headers = {'Authorization': 'Bearer mysecrettoken123'};
          return handler.next(option);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException exception, handler) {
          if (kDebugMode) {
            print(exception.toString());
          }
          return handler.next(exception);
        },
      ),
    );
  }

  late Dio _dio;

  Dio get dio => _dio;
}
