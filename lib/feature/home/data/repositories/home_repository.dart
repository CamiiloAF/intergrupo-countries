import 'package:dio/dio.dart';

import '../../../../core/error/exceptions.dart';
import '../../domain/entities/country.dart';
import '../../domain/repositories/home_repository_contract.dart';
import '../data_sources/home_remote_data_source.dart';

class HomeRepository implements HomeRepositoryContract {
  HomeRepository(this._remoteDataSource);

  final HomeRemoteDataSource _remoteDataSource;

  @override
  Future<List<Country>> getCountries() async {
    try {
      return await _remoteDataSource.getCountries();
    } on DioError catch (e) {
      throw ServerException.fromDioError(dioError: e);
    } catch (_) {
      throw ServerException();
    }
  }
}
