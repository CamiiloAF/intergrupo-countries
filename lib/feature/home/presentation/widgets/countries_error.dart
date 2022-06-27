import 'package:flutter/material.dart';
import 'refresh_countries_icon_button.dart';

class CountriesError extends StatelessWidget {
  const CountriesError({required this.error, final Key? key}) : super(key: key);

  final String error;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '🙈️',
            style: TextStyle(fontSize: 64),
          ),
          Text(
            error,
            style: theme.textTheme.headline5,
          ),
          const RefreshCountriesIconButton(),
        ],
      ),
    );
  }
}
