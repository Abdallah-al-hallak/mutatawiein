import 'package:dio/dio.dart';

import '../../../utils/pref_func.dart';

class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    var token = await getToken();
    options.headers['Authorization'] = 'Bearer $token';

    super.onRequest(options, handler);
  }
}
