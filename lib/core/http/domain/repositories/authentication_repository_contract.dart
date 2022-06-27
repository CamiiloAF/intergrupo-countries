import '../models/auth_token_response.dart';

abstract class AuthenticationRepositoryContract {
  Future<AuthTokenResponse> getToken();
}
