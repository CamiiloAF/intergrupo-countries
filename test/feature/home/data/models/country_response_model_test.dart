import 'package:flutter_test/flutter_test.dart';
import 'package:intergrupo/feature/home/data/models/country_response_model.dart';

void main() {
  test('should return a list of 1 position of CountryResponseModel', () async {
    final json = [
      {
        'country_name': 'countryName',
        'country_short_name': 'countryShortName',
        'country_phone_code': 0,
      }
    ];

    final response = countryResponseModelFromJson(json);

    expect(response.length, equals(1));

    expect(response[0].countryName, equals('countryName'));
    expect(response[0].countryShortName, equals('countryShortName'));
    expect(response[0].countryPhoneCode, equals(0));
  });

  test('should return a list of 1 position of CountryResponseModel', () async {
    final json = [
      {
        'country_name': 'countryName',
        'country_short_name': 'countryShortName',
        'country_phone_code': 0,
      },
      {
        'country_name': 'countryName2',
        'country_short_name': 'countryShortName2',
        'country_phone_code': 1,
      }
    ];

    final response = countryResponseModelFromJson(json);

    expect(response.length, equals(2));

    expect(response[0].countryName, equals('countryName'));
    expect(response[0].countryShortName, equals('countryShortName'));
    expect(response[0].countryPhoneCode, equals(0));

    expect(response[1].countryName, equals('countryName2'));
    expect(response[1].countryShortName, equals('countryShortName2'));
    expect(response[1].countryPhoneCode, equals(1));
  });

  test('should return an empty list', () async {
    final json = [];

    final response = countryResponseModelFromJson(json);

    expect(response.isEmpty, isTrue);
  });

  test('should throw a TypeError when it is not possible to parse the json',
      () async {
    final json = [
      {
        'country_name': 'countryName',
        'country_short': 'countryShortName',
        'country_phone_code': 0,
      }
    ];

    try {
      countryResponseModelFromJson(json);
      fail('should enter the catch');
    } catch (e) {
      expect(
        e,
        isA<TypeError>().having(
          (final error) => (e as TypeError).toString(),
          'message',
          equals("type 'Null' is not a subtype of type 'String'"),
        ),
      );
    }
  });
}
