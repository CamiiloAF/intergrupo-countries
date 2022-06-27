import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/home_bloc.dart';
import 'delegates/countries_search_delegate.dart';

class CountriesSearchInput extends StatelessWidget {
  const CountriesSearchInput({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return GestureDetector(
      onTap: () {
        showSearch(
            context: context,
            delegate: CountriesSearchDelegate(context.read<HomeBloc>()),);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 48, right: 8, left: 8),
        decoration: const BoxDecoration(color: Colors.white),
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: TextFormField(
          enabled: false,
          decoration: const InputDecoration(
            suffixIcon: Icon(
              Icons.search,
            ),
            disabledBorder: UnderlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
