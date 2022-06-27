import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intergrupo/core/di/injection_container.dart';
import 'package:intergrupo/feature/home/domain/entities/country.dart';
import 'package:intergrupo/feature/home/presentation/manager/home_bloc.dart';
import 'package:intergrupo/feature/home/presentation/pages/home_screen.dart';
import 'package:intergrupo/feature/home/presentation/widgets/refresh_countries_icon_button.dart';
import 'package:intergrupo/feature/home/presentation/widgets/widgets.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_utils/mocks/home_mocks.dart';
import '../../../../test_utils/widget_test/widget_for_testing.dart';

void main() {
  group('HomeScreen', () {
    setUpAll(() {
      registerFallbackValue(HomeStateFake());
      registerFallbackValue(HomeEventFake());
    });

    testWidgets('HomeScreen should render HomeView', (final tester) async {
      final homeBloc = HomeBlocMock();

      when(() => homeBloc.state).thenReturn(const HomeState.empty());

      sl.registerFactory<HomeBloc>(() => homeBloc);

      await tester.pumpWidget(
        createWidgetForTesting(
          child: Builder(builder: (final context) => const HomeScreen()),
        ),
      );

      final homeViewFinder = find.byType(HomeView);

      expect(homeViewFinder, findsOneWidget);
    });

    group('HomeView', () {
      testWidgets(
          'HomeView should render CountriesEmpty and RefreshCountriesIconButton',
          (final tester) async {
        final homeBloc = HomeBlocMock();

        when(() => homeBloc.state).thenReturn(const HomeState.empty());

        await tester.pumpWidget(
          BlocProvider<HomeBloc>(
            create: (final _) => homeBloc,
            child: createWidgetForTesting(
              child: Builder(builder: (final context) => const HomeView()),
            ),
          ),
        );

        final countriesEmptyFinder = find.byType(CountriesEmpty);
        final refreshCountriesIconButtonFinder =
            find.byType(RefreshCountriesIconButton);

        expect(countriesEmptyFinder, findsOneWidget);
        expect(refreshCountriesIconButtonFinder, findsOneWidget);
      });

      testWidgets('HomeView should render CountriesLoading', (final tester) async {
        final homeBloc = HomeBlocMock();

        when(() => homeBloc.state).thenReturn(const HomeState.loading());

        await tester.pumpWidget(
          BlocProvider<HomeBloc>(
            create: (final _) => homeBloc,
            child: createWidgetForTesting(
              child: Builder(builder: (final context) => const HomeView()),
            ),
          ),
        );

        final countriesLoadingFinder = find.byType(CountriesLoading);

        expect(countriesLoadingFinder, findsOneWidget);
      });

      testWidgets('HomeView should render CountriesPopulated', (final tester) async {
        final homeBloc = HomeBlocMock();

        when(() => homeBloc.state).thenReturn(
          const HomeStateLoaded(
            countries: [
              Country(
                  countryName: 'countryName',
                  countryShortName: 'countryShortName',
                  countryPhoneCode: 000,),
            ],
          ),
        );

        await tester.pumpWidget(
          BlocProvider<HomeBloc>(
            create: (final _) => homeBloc,
            child: createWidgetForTesting(
              child: Builder(builder: (final context) => const HomeView()),
            ),
          ),
        );

        final countriesPopulateFinder = find.byType(CountriesPopulated);

        expect(countriesPopulateFinder, findsOneWidget);
      });

      testWidgets('HomeView should render CountriesError', (final tester) async {
        final homeBloc = HomeBlocMock();

        when(() => homeBloc.state).thenReturn(
          HomeState.failed(error: 'error'),
        );

        await tester.pumpWidget(
          BlocProvider<HomeBloc>(
            create: (final _) => homeBloc,
            child: createWidgetForTesting(
              child: Builder(builder: (final context) => const HomeView()),
            ),
          ),
        );

        final countriesPopulateFinder = find.byType(CountriesError);

        expect(countriesPopulateFinder, findsOneWidget);
      });
    });
  });
}
