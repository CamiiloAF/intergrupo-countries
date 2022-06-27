import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intergrupo/core/error/exceptions.dart';
import 'package:intergrupo/feature/home/data/models/country_response_model.dart';
import 'package:intergrupo/feature/home/data/repositories/home_repository.dart';
import 'package:intergrupo/feature/home/domain/repositories/home_repository_contract.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_utils/mocks/home_mocks.dart';

void main() {
  late HomeRepositoryContract repository;
  late HomeRemoteDataSourceMock remoteDataSource;

  setUp(() {
    remoteDataSource = HomeRemoteDataSourceMock();

    repository = HomeRepository(
      remoteDataSource,
    );
  });

  group('getCountries', () {
    test('should return a list of Country', () async {
      when(() => remoteDataSource.getCountries()).thenAnswer((final _) async => [
            const CountryResponseModel(
                countryName: 'countryName',
                countryShortName: 'countryShortName',
                countryPhoneCode: 002,),
          ],);

      final response = await repository.getCountries();

      expect(response.length, equals(1));
      expect(response[0].countryName, equals('countryName'));
      expect(response[0].countryShortName, equals('countryShortName'));
      expect(response[0].countryPhoneCode, equals(002));
    });

    test("should throw a ServerException with Dio's message", () async {
      const error = 'test error';
      when(() => remoteDataSource.getCountries()).thenThrow(
        DioError(
          error: error,
          requestOptions: RequestOptions(
            path: '/',
          ),
        ),
      );

      expect(
          () async => repository.getCountries(),
          throwsA(isA<ServerException>().having(
            (final e) => e.message,
            'message',
            equals(error),
          ),),);
    });

    test('should throw a ServerException with the default message', () async {
      when(() => remoteDataSource.getCountries())
          .thenThrow((final _) => throw ServerException());

      expect(
          () async => repository.getCountries(),
          throwsA(isA<ServerException>().having(
            (final e) => e.message,
            'message',
            equals('An unexpected error occurred'),
          ),),);
    });
  });
}
