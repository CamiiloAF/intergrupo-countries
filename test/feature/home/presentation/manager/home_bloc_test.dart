import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intergrupo/core/error/exceptions.dart';
import 'package:intergrupo/feature/home/domain/entities/country.dart';
import 'package:intergrupo/feature/home/domain/use_cases/get_countries_use_case.dart';
import 'package:intergrupo/feature/home/domain/use_cases/open_map_use_case.dart';
import 'package:intergrupo/feature/home/presentation/manager/home_bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_utils/mocks/home_mocks.dart';

void main() {
  group('HomeBloc', () {
    late GetCountriesUseCase getCountriesUseCase;
    late OpenMapUseCase openMapUseCase;

    setUp(() {
      getCountriesUseCase = GetCountriesUseCaseMock();
      openMapUseCase = OpenMapUseCaseMock();
    });

    test('initial state is correct', () {
      final homeBloc = HomeBloc(getCountriesUseCase, openMapUseCase);
      expect(homeBloc.state, const HomeState.empty());
    });

    group('fetchCountries', () {
      blocTest<HomeBloc, HomeState>(
        'emits HomeState.loading and HomeState.empty when the FetchCountry event is added and returns empty countries',
        build: () => HomeBloc(getCountriesUseCase, openMapUseCase),
        setUp: () {
          when(() => getCountriesUseCase(null))
              .thenAnswer((final invocation) async => []);
        },
        act: (final bloc) => bloc.add(const FetchCountries()),
        expect: () => <HomeState>[
          const HomeState.loading(),
          const HomeState.empty(),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits HomeState.loading and HomeStateLoaded when the FetchCountry event is added and returns more than 1 country',
        build: () => HomeBloc(getCountriesUseCase, openMapUseCase),
        setUp: () {
          when(() => getCountriesUseCase(null)).thenAnswer(
            (final invocation) async => [
              const Country(
                  countryName: 'countryName',
                  countryShortName: 'countryShortName',
                  countryPhoneCode: 004,),
            ],
          );
        },
        act: (final bloc) => bloc.add(const FetchCountries()),
        expect: () => <HomeState>[
          const HomeState.loading(),
          const HomeState.loaded(
            countries: [
              Country(
                countryName: 'countryName',
                countryShortName: 'countryShortName',
                countryPhoneCode: 004,
              ),
            ],
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits HomeState.loading and HomeState.failed when the FetchCountry event is added and throws a Failure',
        build: () => HomeBloc(getCountriesUseCase, openMapUseCase),
        setUp: () {
          when(() => getCountriesUseCase(null)).thenThrow(Failure('error 401'));
        },
        act: (final bloc) => bloc.add(const FetchCountries()),
        expect: () => <HomeState>[
          const HomeState.loading(),
          HomeState.failed(error: 'error 401'),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits HomeState.loading and HomeState.failed when the FetchCountry event is added and throws an Exception',
        build: () => HomeBloc(getCountriesUseCase, openMapUseCase),
        setUp: () {
          when(() => getCountriesUseCase(null)).thenThrow(Exception());
        },
        act: (final bloc) => bloc.add(const FetchCountries()),
        expect: () => <HomeState>[
          const HomeState.loading(),
          HomeState.failed(error: 'Ocurrió un error inesperado'),
        ],
      );
    });

    group('filterCountries', () {
      late HomeBloc homeBloc;

      setUp(() {
        final GetCountriesUseCase _getCountriesUseCase =
            GetCountriesUseCaseMock();
        final OpenMapUseCase _openMapUseCase = OpenMapUseCaseMock();

        when(() => _getCountriesUseCase(null))
            .thenAnswer((final invocation) async => [
                  const Country(
                      countryName: 'countryName',
                      countryShortName: 'countryShortName',
                      countryPhoneCode: 005,),
                ],);

        homeBloc = HomeBloc(_getCountriesUseCase, _openMapUseCase);
      });

      test('returns a list with 1 element when query matches with any element',
          () async {
        homeBloc.add(const FetchCountries());

        await Future.delayed(const Duration(milliseconds: 500));

        final filterList = homeBloc.filterCountries('countryName');

        expect(filterList.length, equals(1));
      });

      test('returns all countries when query is empty', () async {
        homeBloc.add(const FetchCountries());

        await Future.delayed(const Duration(milliseconds: 500));

        final filterList = homeBloc.filterCountries('');

        expect(filterList.length, equals(1));
      });

      test('returns an empty list when query does not match with any element',
          () async {
        homeBloc.add(const FetchCountries());

        await Future.delayed(const Duration(milliseconds: 500));

        final filterList = homeBloc.filterCountries('cName');

        expect(filterList.isEmpty, isTrue);
      });
    });

    group('openMap', () {
      late HomeBloc homeBloc;

      late GetCountriesUseCase _getCountriesUseCase;
      late OpenMapUseCase _openMapUseCase;

      setUp(() {
        _getCountriesUseCase = GetCountriesUseCaseMock();
        _openMapUseCase = OpenMapUseCaseMock();

        homeBloc = HomeBloc(_getCountriesUseCase, _openMapUseCase);
      });

      test('_openMapUseCase is called 1 time', () async {
        when(() => _openMapUseCase(any())).thenAnswer((final invocation) async {});

        await homeBloc.openMap('country');
        verify(() => _openMapUseCase.call('country')).called(1);
      });

      test('_openMapUseCase should throws a Failure when throws a Failure',
          () async {
        when(() => _openMapUseCase(any()))
            .thenThrow(Failure('Failed to open the map'));

        try {
          await homeBloc.openMap('country');
          fail('Must be throw an Exception');
        } catch (e) {
          expect(
            e,
            isA<Failure>().having(
              (final error) => error.message,
              'message',
              equals('Failed to open the map'),
            ),
          );
        }
      });

      test('_openMapUseCase should throws a Failure when throws an Exception',
          () async {
        when(() => _openMapUseCase(any())).thenThrow(Exception('Fake error'));

        try {
          await homeBloc.openMap('country');
          fail('Must be throw an Exception');
        } catch (e) {
          expect(
            e,
            isA<Failure>().having(
              (final error) => error.message,
              'message',
              equals('An unexpected error occurred'),
            ),
          );
        }
      });
    });
  });
}
