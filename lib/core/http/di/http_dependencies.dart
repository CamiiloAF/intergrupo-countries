import 'package:dio/dio.dart';

import '../../di/injection_container.dart';
import '../data/config/remote_api_constants.dart';
import '../data/data_source/authentication_remote_data_source.dart';
import '../data/http_proxy_impl.dart';
import '../data/repositories/authentication_repository.dart';

Future<void> setUpHttpDependencies() async {
  sl.registerFactory(
    () => AuthenticationRemoteDataSource(Dio(), '/getaccesstoken'),
  );

  sl.registerFactory(
    () => AuthenticationRepository(sl<AuthenticationRemoteDataSource>()),
  );

  sl.registerFactory(
    () => HttpProxyImpl(
      RemoteApiConstants.baseUrl,
      sl<AuthenticationRepository>(),
    ),
  );
}
