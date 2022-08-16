import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mutatawiein/data/model/association.dart';
import 'package:mutatawiein/data/model/task.dart';
import 'package:mutatawiein/toast.dart';

import '../../utils/pref_func.dart';
import '../model/add_to_ass.dart';
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

  Future<AddToAss> addVolToAss(
    int assId,
  ) async {
    try {
      var id = await getId();
      final response = await _dio.post(
        'http://31.9.57.147:8080/ass/addToAss',
        data: {
          "volId": 1,
          "assId": assId,
        },
      );
      if (response.statusCode == 200) {
        print('nice');
        showToast(msg: 'تم الانضمام بنجاح للجمعية', isError: false);
      }
      return addToAssFromJson(response.toString());
    } on DioError catch (err) {
      String errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    }
  }

  Future<Task> addVolToEveTask(
    int assId,
  ) async {
    try {
      var id = await getId();
      final response = await _dio.post(
        'http://31.9.57.147:8080/ass/AddVolToEveTask',
        data: {
          "volId": 1,
          "eveTaskId": assId,
        },
      );
      if (response.statusCode == 200) {
        print('nice good');
        showToast(msg: 'تم الانضمام بنجاح للمهمة', isError: false);
      }
      return taskFromJson(response.toString());
    } on DioError catch (err) {
      String errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    }
  }
}
