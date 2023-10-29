import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_information_list_mvvm_app/config/app_config.dart';

class NetworkInterceptor extends Interceptor {

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    DioException exception = err;
    if (err.error != null && err.error is SocketException) {
      exception = DioException(
        requestOptions: exception.requestOptions,
        message: ErrorConfig.SOCKET_ERROR_MESSAGE,
        type: DioExceptionType.connectionError
      );
    }
    super.onError(exception, handler);
  }
}