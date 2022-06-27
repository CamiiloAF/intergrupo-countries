import 'package:flutter_test/flutter_test.dart';
import 'package:intergrupo/core/error/exceptions.dart';
import 'package:intergrupo/feature/home/domain/entities/country.dart';
import 'package:intergrupo/feature/home/domain/repositories/home_repository_contract.dart';
import 'package:intergrupo/feature/home/domain/use_cases/get_countries_use_case.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_utils/mocks/home_mocks.dart';

void main() {
  late HomeRepositoryContract repository;
  late GetCountriesUseCase useCase;

  setUp(() {
    repository = HomeRepositoryMock();
    useCase = GetCountriesUseCase(repository);
  });

  test('should return a list of Country', () async {
    when(() => repository.getCountries()).thenAnswer((final _) async => [
          const Country(
              countryName: 'countryName',
              countryShortName: 'countryShortName',
              countryPhoneCode: 003,),
        ],);

    final response = await useCase(null);

    expect(response.length, equals(1));
    expect(response[0].countryName, equals('countryName'));
    expect(response[0].countryShortName, equals('countryShortName'));
    expect(response[0].countryPhoneCode, equals(003));
  });

  test('should throw a Failure with the ServerException message', () async {
    when(() => repository.getCountries())
        .thenThrow(ServerException(message: 'error 003'));

    try {
      await useCase(null);
    } catch (e) {
      expect(
        e,
        isA<Failure>().having(
          (final error) => error.message,
          'message',
          equals('error 003'),
        ),
      );
    }
  });
}
