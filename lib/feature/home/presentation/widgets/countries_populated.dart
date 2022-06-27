import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/country.dart';
import 'countries_search_input.dart';
import 'country_item.dart';

class CountriesPopulated extends StatelessWidget {
  const CountriesPopulated({
    required this.countries,
    final Key? key,
  }) : super(key: key);

  final List<Country> countries;

  @override
  Widget build(final BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CountriesSearchInput(),
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: countries.length,
            itemBuilder: (final _, final i) {
              return CountryItem(
                country: countries[i],
                key: Key(
                  'item_${i}_country_item',
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
