import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:amrita_vidyalyam_admission/core/services/connectivity_service.dart';
import 'package:amrita_vidyalyam_admission/network/interceptors/connectivity_interceptor.dart';
import '../config/app_secrets.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/logger_interceptor.dart';
part 'dio_client.g.dart';

@riverpod
Dio dio(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: AppSecrets.base_url,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  dio.interceptors.add(ConnectivityInterceptor(ref.read(connectivityServiceProvider)));
  dio.interceptors.add(AuthInterceptor());
  if (!kReleaseMode) {
    dio.interceptors.add(LoggerInterceptor());
  }

  return dio;
}
