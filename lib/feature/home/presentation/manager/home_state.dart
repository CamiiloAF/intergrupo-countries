part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.empty() = _HomeStateEmpty;

  const factory HomeState.loading() = _HomeStateLoading;

  const factory HomeState.loaded({
    required final List<Country> countries,
  }) = HomeStateLoaded;

  factory HomeState.failed({required final String error}) = _HomeStateFailed;
}
