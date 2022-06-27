import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/di/injection_container.dart';
import '../../manager/home_bloc.dart';
import '../countries_empty.dart';
import '../country_item.dart';

class CountriesSearchDelegate extends SearchDelegate {
  CountriesSearchDelegate(this.homeBloc);

  final HomeBloc homeBloc;

  @override
  String get searchFieldLabel => 'Search country';

  @override
  List<Widget> buildActions(final BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(final BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(final BuildContext context) {
    final countries = homeBloc.filterCountries(query);

    if (countries.isEmpty) {
      return const CountriesEmpty();
    }

    return ListView.builder(
      itemCount: countries.length,
      itemBuilder: (final _, final i) {
        return BlocProvider(
          create: (final _) => sl<HomeBloc>(),
          child: Builder(
            builder: (final context) => CountryItem(country: countries[i]),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(final BuildContext context) {
    return Column();
  }
}
