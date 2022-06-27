import 'package:flutter_test/flutter_test.dart';
import 'package:intergrupo/feature/home/presentation/widgets/countries_error.dart';

import '../../../../test_utils/widget_test/widget_for_testing.dart';

void main() {
  group('CountriesError', () {
    testWidgets('CountryItem has a error message', (final tester) async {
      await tester.pumpWidget(
        createWidgetForTesting(
          child: const CountriesError(
            error: 'Error 404',
          ),
        ),
      );

      final errorMessageFinder = find.text('Error 404');

      expect(errorMessageFinder, findsOneWidget);
    });
  });
}
