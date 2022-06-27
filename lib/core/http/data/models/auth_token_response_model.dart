import '../../domain/models/auth_token_response.dart';

class AuthTokenResponseModel extends AuthTokenResponse {
  AuthTokenResponseModel({
    required final String authToken,
  }) : super(authToken);

  factory AuthTokenResponseModel.fromJson(final Map<String, dynamic> json) =>
      AuthTokenResponseModel(
        authToken: json['auth_token'],
      );
}
