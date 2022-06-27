import 'package:flutter/material.dart';

class CountriesEmpty extends StatelessWidget {
  const CountriesEmpty({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 12),
          child: Center(
            child: Text(
              'We have not found countries',
              style: theme.textTheme.headline5,
            ),
          ),
        ),
      ],
    );
  }
}
