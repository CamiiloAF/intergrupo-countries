import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/home_bloc.dart';

class RefreshCountriesIconButton extends StatelessWidget {
  const RefreshCountriesIconButton({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return IconButton(
        iconSize: 48,
        onPressed: () {
          context.read<HomeBloc>().add(const FetchCountries());
        },
        icon: const Icon(Icons.refresh_outlined),);
  }
}
