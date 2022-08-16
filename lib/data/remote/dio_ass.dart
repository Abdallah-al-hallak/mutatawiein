import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mutatawiein/data/model/association.dart';

import '../network/dio_exception.dart';
import '../network/endpoints.dart';
import '../network/interceptors/authorization_interceptor.dart';
import '../network/interceptors/logger_interceptor.dart';

class DioAssociation {
  DioAssociation()
      : _dio = Dio(
          BaseOptions(
            connectTimeout: Endpoints.connectionTimeout,
            receiveTimeout: Endpoints.receiveTimeout,
            responseType: ResponseType.json,
          ),
        )..interceptors.addAll([
            AuthorizationInterceptor(),
            LoggerInterceptor(),
          ]);

  late final Dio _dio;

  Future<List<Association>> getAssociation() async {
    try {
      // region handle url by filter

      // endregion handle url by filter

      final response =
          await _dio.get('http://31.9.57.147:8080/public/GetAllAss');
      var d = ((response.data) as List)
          .map((data) => Association.fromJson(data))
          .toList();
      // var d = Association.fromJson(response.data);
      return d;
    } on DioError catch (err) {
      String errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    }
  }
}
