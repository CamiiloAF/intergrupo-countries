import 'package:dio/dio.dart';

import '../../domain/models/auth_token_response.dart';
import '../../domain/models/path_uri.dart';
import '../config/remote_api_constants.dart';
import '../models/auth_token_response_model.dart';

class AuthenticationRemoteDataSource {
  AuthenticationRemoteDataSource(this.http, this._getTokenService);

  final Dio http;
  final String _getTokenService;

  AuthTokenResponse? _authTokenResponse;

  Future<AuthTokenResponse> getToken() async {
    if (_authTokenResponse != null) {
      return _authTokenResponse!;
    }

    final _uri = PathUri(service: _getTokenService).toString();

    http.options
      ..baseUrl = RemoteApiConstants.baseUrl
      ..headers.addAll({
        'Accept': 'application/json',
        'api-token':
            'A2oMJjZMd1BelO823YY4bd41mFINgExxPxF3jkzAcCRujKSQXyu9NeQz11Sr3mFyUbQ',
        'user-email': 'camiiloagudelo92@gmail.com'
      });

    final resp = await http.get(_uri);

    _authTokenResponse = AuthTokenResponseModel.fromJson(resp.data);

    return _authTokenResponse!;
  }
}
