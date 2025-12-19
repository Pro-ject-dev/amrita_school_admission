import 'package:dio/dio.dart';

class ErrorHelper {
  static String getErrorMessage(Object error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          return "Connection timed out. Please check your internet connection.";
        case DioExceptionType.badResponse:
          return "Server error. Please try again later.";
        case DioExceptionType.connectionError:
          return "No internet connection. Please check your settings.";
        default:
          return "Network error occurred. Please try again.";
      }
    }
    
    // Check for common specific string errors if needed
    final errorString = error.toString();
    if (errorString.contains("SocketException")) {
       return "No internet connection.";
    }

    // Default generic message
    return "An unexpected error occurred. Please try again.";
  }
}
