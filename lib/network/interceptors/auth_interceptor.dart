import 'package:amrita_vidyalyam_admission/config/app_secrets.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {

    
    if (AppSecrets.school_api_token != null) {
      options.headers['Content-Type'] = 'application/json';
      options.headers['Authorization'] = '${AppSecrets.school_api_token}';
    }
    
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      // TODO: Handle token expiration (refresh token or logout)
      debugPrint('Unauthorized: ${err.response?.statusCode}');
    }
    super.onError(err, handler);
  }
}
