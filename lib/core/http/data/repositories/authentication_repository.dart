import 'package:dio/dio.dart';

import '../../../error/exceptions.dart';
import '../../domain/models/auth_token_response.dart';
import '../../domain/repositories/authentication_repository_contract.dart';
import '../data_source/authentication_remote_data_source.dart';

class AuthenticationRepository extends AuthenticationRepositoryContract {
  AuthenticationRepository(this._remoteDataSource);

  final AuthenticationRemoteDataSource _remoteDataSource;

  @override
  Future<AuthTokenResponse> getToken() async {
    try {
      return await _remoteDataSource.getToken();
    } on DioError catch (e) {
      throw ServerException.fromDioError(dioError: e);
    } catch (_) {
      throw ServerException();
    }
  }
}
