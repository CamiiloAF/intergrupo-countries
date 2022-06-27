import '../../../core/di/injection_container.dart';
import '../../../core/http/data/http_proxy_impl.dart';
import '../data/data_sources/home_remote_data_source.dart';
import '../data/repositories/home_repository.dart';
import '../domain/use_cases/get_countries_use_case.dart';
import '../domain/use_cases/open_map_use_case.dart';
import '../presentation/manager/home_bloc.dart';

Future<void> setUpHomeDependencies() async {
  sl.registerFactory(
    () => HomeRemoteDataSource(sl<HttpProxyImpl>(), '/countries'),
  );

  sl.registerFactory(
    () => HomeRepository(sl<HomeRemoteDataSource>()),
  );

  sl.registerFactory(
    () => GetCountriesUseCase(sl<HomeRepository>()),
  );

  sl.registerFactory(
    OpenMapUseCase.new,
  );

  sl.registerSingleton<HomeBloc>(
    HomeBloc(sl.get<GetCountriesUseCase>(), sl.get<OpenMapUseCase>()),
  );
}
