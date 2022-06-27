import 'dart:developer';

import 'package:dio/dio.dart';

class ServerException implements Exception {
  ServerException({
    this.error,
    final String? message,
    final StackTrace? stackTrace,
  }) : message = message ?? _defaultMessage {
    if (error is Error) {
      _handleTypeError();
    } else {
      _defaultErrorHandler(stackTrace);
    }
  }

  ServerException.fromDioError({required final DioError dioError})
      : error = dioError,
        message = dioError.message {
    _defaultErrorHandler();
  }

  final String message;

  // ignore: no-object-declaration
  final Object? error;
  static const _defaultMessage = 'An unexpected error occurred';

  void _defaultErrorHandler([final StackTrace? stackTrace]) {
    log(message, error: error, stackTrace: stackTrace);
  }

  void _handleTypeError() {
    _defaultErrorHandler((error as Error?)?.stackTrace ?? StackTrace.empty);
  }
}

class Failure implements Exception {
  Failure([this.message = 'An unexpected error occurred']);

  final String message;
}
