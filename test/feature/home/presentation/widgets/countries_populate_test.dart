import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intergrupo/feature/home/domain/entities/country.dart';
import 'package:intergrupo/feature/home/presentation/widgets/countries_populated.dart';

import '../../../../test_utils/widget_test/widget_for_testing.dart';

void main() {
  group('CountriesPopulate', () {
    final countries = List<Country>.generate(
      100,
      (final i) => Country(
        countryName: 'countryName$i',
        countryShortName: 'countryShortName$i',
        countryPhoneCode: i,
      ),
    );

    testWidgets('CountriesPopulate has a lot of CountryItems', (final tester) async {
      await tester.pumpWidget(
        createWidgetForTesting(
          child: CountriesPopulated(countries: countries),
        ),
      );

      final itemFinder = find.byKey(const ValueKey('item_80_country_item'));

      expect(itemFinder, findsOneWidget);
    });

    testWidgets('CountriesPopulate has no CountryItems', (final tester) async {
      await tester.pumpWidget(
        createWidgetForTesting(
          child: const CountriesPopulated(countries: []),
        ),
      );

      final itemFinder = find.byKey(const ValueKey('item_00_country_item'));

      expect(itemFinder, findsNothing);
    });
  });
}
