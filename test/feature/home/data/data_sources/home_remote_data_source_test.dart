import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intergrupo/feature/home/data/data_sources/home_remote_data_source.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_utils/mocks/http_mocks.dart';

void main() {
  late HomeRemoteDataSource remoteDataSource;
  late MockHttpProxyImpl httpClient;
  late Dio dio;
  late Response response;

  setUp(() {
    dio = MockDio();
    response = MockDioResponse();
    httpClient = MockHttpProxyImpl();

    remoteDataSource = HomeRemoteDataSource(httpClient, '');
  });

  group('getCountries', () {
    test('should cast a json to a list of CountryResponseModel', () async {
      final _fakeResponse = [
        {
          'country_name': 'countryName',
          'country_short_name': 'countryShortName',
          'country_phone_code': 123,
        }
      ];

      when(() => httpClient.instance()).thenReturn(dio);
      when(() => response.statusCode).thenReturn(200);
      when(() => response.data).thenReturn(_fakeResponse);
      when(() => dio.get(any(that: isNotNull)))
          .thenAnswer((final _) async => response);

      final result = await remoteDataSource.getCountries();

      expect(result.length, 1);
      expect(result[0].countryName, equals('countryName'));
      expect(result[0].countryShortName, equals('countryShortName'));
      expect(result[0].countryPhoneCode, equals(123));
    });

    test('should go to the catch by returning the http client status 404',
        () async {
      when(() => httpClient.instance()).thenAnswer((final _) => dio);
      when(() => response.statusCode).thenReturn(404);
      when(() => response.statusMessage).thenReturn('dioErrorMessage');

      when(() => dio.get(any(that: isNotNull))).thenThrow(DioError(
        response: response,
        error: response.statusMessage,
        requestOptions: RequestOptions(path: ''),
      ),);

      try {
        await remoteDataSource.getCountries();
      } catch (e) {
        expect(
          e,
          isA<DioError>(),
        );
      }
    });
  });
}
