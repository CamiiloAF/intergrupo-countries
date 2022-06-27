import 'package:flutter/material.dart';

class CountriesLoading extends StatelessWidget {
  const CountriesLoading({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Loading information',
            style: theme.textTheme.headline5,
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}
