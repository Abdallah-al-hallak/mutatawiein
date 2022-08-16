// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart' show kDebugMode;
// import '../model/login_model.dart';
// import '../network/interceptors/interceptors.dart';
// import '../network/network.dart';

// class DioCountry {
//   DioCountry()
//       : _dio = Dio(
//           BaseOptions(
//             baseUrl: Endpoints.baseURL,
//             connectTimeout: Endpoints.connectionTimeout,
//             receiveTimeout: Endpoints.receiveTimeout,
//             responseType: ResponseType.json,
//           ),
//         )..interceptors.addAll([
//             //AuthorizationInterceptor(),
//             LoggerInterceptor(),
//             LanguageInterceptor(),
//             InnErrorInterceptors(),
//             // HeaderInterceptor(),
//           ]);

//   late final Dio _dio;

//   Future<LoginModel?> getUser() async {
//     try {
//       final response = await _dio.post(
//         '${Endpoints.login}/LoginTerminal',
//         data: {
//           "userName": "admin",
//           "password": "123456789s",
//           "terminlKey": "oxYvF/3r/u/Mf1fUZ55keucja6cN0aST1CkEJkHcYiI=",
//         },
//       );
//       return loginModelFromJson(response.toString());
//     } on DioError catch (err) {
//       String errorMessage = DioException.fromDioError(err).toString();
//       throw errorMessage;
//     }
//   }
// }
