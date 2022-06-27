import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/country.dart';
import '../manager/home_bloc.dart';

class CountryItem extends StatelessWidget {
  const CountryItem({required this.country, final Key? key}) : super(key: key);

  final Country country;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(4),
      child: InkWell(
        onTap: () async {
          await context.read<HomeBloc>().openMap(country.countryName);
        },
        child: Card(
          elevation: 6,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all()),
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(12),
                child: const Text(
                  'GO',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * .6,
                    ),
                    child: Text(
                      country.countryName,
                      style: theme.textTheme.headline5,
                    ),
                  ),
                  Text(
                    country.countryShortName,
                    style: theme.textTheme.bodyText1,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
