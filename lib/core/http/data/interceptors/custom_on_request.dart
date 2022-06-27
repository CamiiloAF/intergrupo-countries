import 'dart:developer';

import 'package:dio/dio.dart';

import '../../domain/repositories/authentication_repository_contract.dart';

Future<RequestOptions> customOnRequest(
  final RequestOptions options,
  final AuthenticationRepositoryContract authRepository,
) async {
  _printInfoRequest(options);

  final authToken = await authRepository.getToken();

  return _setHeaders(options, authToken.token);
}

Future<RequestOptions> _setHeaders(
  final RequestOptions options,
  final String? token,
) async {
  final _headers = await _getCustomHeaders(token);
  options.headers.addAll(_headers);
  return options;
}

Future<Map<String, dynamic>> _getCustomHeaders(
  final String? token,
) async {
  final _headers = {
    'Authorization': 'Bearer $token',
    'Accept': 'application/json'
  };

  return _headers;
}

void _printInfoRequest(final RequestOptions options) {
  log('method: ${options.method}  headers: ${options.headers}');
  log('baseURL: ${options.baseUrl} path: ${options.path}');
  log('queryParameters: ${options.queryParameters}');
}
