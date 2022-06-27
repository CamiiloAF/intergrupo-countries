import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/exceptions.dart';
import '../../domain/entities/country.dart';
import '../../domain/use_cases/get_countries_use_case.dart';
import '../../domain/use_cases/open_map_use_case.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetCountriesUseCase _getCountriesUseCase;
  final OpenMapUseCase _openMapUseCase;

  List<Country> _countries = [];

  // ignore: sort_constructors_first
  HomeBloc(this._getCountriesUseCase, this._openMapUseCase)
      : super(const HomeState.empty()) {
    on<FetchCountries>((final event, final emit) async {
      await _onFetchCountries(event, emit);
    });
  }

  Future<void> _onFetchCountries(
    final FetchCountries event,
    final Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());

    try {
      _countries = await _getCountriesUseCase(null);

      if (_countries.isEmpty) {
        emit(const HomeState.empty());
      } else {
        emit(HomeStateLoaded(countries: _countries));
      }
    } on Failure catch (e) {
      emit(HomeState.failed(error: e.message));
    } on Exception catch (_) {
      emit(HomeState.failed(error: 'Ocurrió un error inesperado'));
    }
  }

  List<Country> filterCountries(String query) {
    if (query.isEmpty) {
      return _countries;
    }

    // ignore: parameter_assignments
    query = query.toLowerCase().trim();

    return _countries
        .where(
          (final element) =>
              element.countryName.toLowerCase().contains(query) ||
              element.countryShortName.toLowerCase().contains(query) ||
              element.countryPhoneCode.toString().contains(query),
        )
        .toList();
  }

  Future<void> openMap(final String country) async {
    try {
      await _openMapUseCase(country);
    } on Failure {
      rethrow;
    } on Exception catch (_) {
      throw Failure();
    }
  }
}
