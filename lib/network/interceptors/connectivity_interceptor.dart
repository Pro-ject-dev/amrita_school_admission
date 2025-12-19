import 'package:amrita_vidyalyam_admission/core/services/connectivity_service.dart';
import 'package:dio/dio.dart';

class ConnectivityInterceptor extends Interceptor {
  final ConnectivityService _connectivityService;

  ConnectivityInterceptor(this._connectivityService);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final isOnline = await _connectivityService.checkConnectivity();
    if (!isOnline) {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: 'No Internet connection',
          type: DioExceptionType.connectionError,
        ),
      );
    }
    return super.onRequest(options, handler);
  }
}
