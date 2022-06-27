import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intergrupo/feature/home/presentation/manager/home_bloc.dart';
import 'package:intergrupo/feature/home/presentation/widgets/refresh_countries_icon_button.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_utils/mocks/home_mocks.dart';
import '../../../../test_utils/widget_test/widget_for_testing.dart';

void main() {
  group('RefreshCountriesIconButton', () {
    setUpAll(() {
      registerFallbackValue(HomeStateFake());
      registerFallbackValue(HomeEventFake());
    });

    testWidgets(
        'On Tap RefreshCountriesIconButton should call bloc.add(FetchCountries)',
        (final tester) async {
      final bloc = HomeBlocMock();

      when(() => bloc.add(const FetchCountries())).thenAnswer((final _) async {});

      await tester.pumpWidget(
        BlocProvider<HomeBloc>(
          create: (final _) => bloc,
          child: createWidgetForTesting(
            child: Builder(
                builder: (final context) => const RefreshCountriesIconButton(),),
          ),
        ),
      );

      await tester.tap(find.byType(GestureDetector));

      verify(() => bloc.add(const FetchCountries())).called(1);
    });
  });
}
