import 'package:dio/dio.dart';
import '../model/login_model.dart';
import '../network/interceptors/interceptors.dart';
import '../network/network.dart';

class DioLogIn {
  DioLogIn()
      : _dio = Dio(
          BaseOptions(
            connectTimeout: Endpoints.connectionTimeout,
            receiveTimeout: Endpoints.receiveTimeout,
            responseType: ResponseType.json,
          ),
        )..interceptors.addAll([
            LoggerInterceptor(),
          ]);

  late final Dio _dio;

  Future<LogInModel> logIn(
    String userName,
    String password,
  ) async {
    try {
      final response = await _dio.post(
        'http://${Endpoints.login}',
        data: {
          "username": userName,
          "password": password,
        },
      );
      return logInModelFromJson(response.toString());
    } on DioError catch (err) {
      String errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    }
  }
}
