import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection_container.dart';
import '../manager/home_bloc.dart';
import '../widgets/refresh_countries_icon_button.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return BlocProvider(
        create: (final _) => sl<HomeBloc>(),
        child: Builder(builder: (final context) => const HomeView()),);
  }
}

class HomeView extends StatefulWidget {
  const HomeView({final Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((final _) => _afterLayout());
    super.initState();
  }

  void _afterLayout() {
    context.read<HomeBloc>().add(const FetchCountries());
  }

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (final context, final state) {
          return state.when(
            empty: () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CountriesEmpty(),
                RefreshCountriesIconButton(),
              ],
            ),
            loading: () => const CountriesLoading(),
            loaded: (final countries) => CountriesPopulated(countries: countries),
            failed: (final error) => CountriesError(error: error),
          );
        },
      ),
    );
  }
}
