import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intergrupo/feature/home/domain/entities/country.dart';
import 'package:intergrupo/feature/home/presentation/manager/home_bloc.dart';
import 'package:intergrupo/feature/home/presentation/widgets/country_item.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_utils/mocks/home_mocks.dart';
import '../../../../test_utils/widget_test/widget_for_testing.dart';

void main() {
  group('CountryItem', () {
    setUpAll(() {
      registerFallbackValue(HomeStateFake());
      registerFallbackValue(HomeEventFake());
    });

    const country = Country(
      countryName: 'countryName',
      countryShortName: 'countryShortName',
      countryPhoneCode: 009,
    );

    testWidgets('CountryItem should have country name and country short name',
        (final tester) async {
      await tester.pumpWidget(
        createWidgetForTesting(
          child: const CountryItem(country: country),
        ),
      );

      final countryNameFinder = find.text(country.countryName);
      final countryShortNameFinder = find.text(country.countryShortName);

      expect(countryNameFinder, findsOneWidget);
      expect(countryShortNameFinder, findsOneWidget);
    });

    testWidgets('On Tap CountryItem should call bloc.openMap', (final tester) async {
      final bloc = HomeBlocMock();

      when(() => bloc.openMap(any())).thenAnswer((final _) async {});

      await tester.pumpWidget(
        BlocProvider<HomeBloc>(
          create: (final _) => bloc,
          child: createWidgetForTesting(
            child: Builder(
                builder: (final context) => const CountryItem(country: country),),
          ),
        ),
      );

      await tester.tap(find.byType(InkWell));

      verify(() => bloc.openMap(any())).called(1);
    });
  });
}
