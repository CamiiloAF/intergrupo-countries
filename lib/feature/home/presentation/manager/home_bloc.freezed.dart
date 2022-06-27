// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  FetchCountries fetchCountries() {
    return const FetchCountries();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCountries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchCountries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCountries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCountries value) fetchCountries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchCountries value)? fetchCountries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCountries value)? fetchCountries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $FetchCountriesCopyWith<$Res> {
  factory $FetchCountriesCopyWith(
          FetchCountries value, $Res Function(FetchCountries) then) =
      _$FetchCountriesCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchCountriesCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $FetchCountriesCopyWith<$Res> {
  _$FetchCountriesCopyWithImpl(
      FetchCountries _value, $Res Function(FetchCountries) _then)
      : super(_value, (v) => _then(v as FetchCountries));

  @override
  FetchCountries get _value => super._value as FetchCountries;
}

/// @nodoc

class _$FetchCountries implements FetchCountries {
  const _$FetchCountries();

  @override
  String toString() {
    return 'HomeEvent.fetchCountries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchCountries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCountries,
  }) {
    return fetchCountries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchCountries,
  }) {
    return fetchCountries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCountries,
    required TResult orElse(),
  }) {
    if (fetchCountries != null) {
      return fetchCountries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCountries value) fetchCountries,
  }) {
    return fetchCountries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchCountries value)? fetchCountries,
  }) {
    return fetchCountries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCountries value)? fetchCountries,
    required TResult orElse(),
  }) {
    if (fetchCountries != null) {
      return fetchCountries(this);
    }
    return orElse();
  }
}

abstract class FetchCountries implements HomeEvent {
  const factory FetchCountries() = _$FetchCountries;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeStateEmpty empty() {
    return const _HomeStateEmpty();
  }

  _HomeStateLoading loading() {
    return const _HomeStateLoading();
  }

  HomeStateLoaded loaded({required List<Country> countries}) {
    return HomeStateLoaded(
      countries: countries,
    );
  }

  _HomeStateFailed failed({required String error}) {
    return _HomeStateFailed(
      error: error,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Country> countries) loaded,
    required TResult Function(String error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Country> countries)? loaded,
    TResult Function(String error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Country> countries)? loaded,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateEmpty value) empty,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(_HomeStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeStateEmpty value)? empty,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateEmpty value)? empty,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$HomeStateEmptyCopyWith<$Res> {
  factory _$HomeStateEmptyCopyWith(
          _HomeStateEmpty value, $Res Function(_HomeStateEmpty) then) =
      __$HomeStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeStateEmptyCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateEmptyCopyWith<$Res> {
  __$HomeStateEmptyCopyWithImpl(
      _HomeStateEmpty _value, $Res Function(_HomeStateEmpty) _then)
      : super(_value, (v) => _then(v as _HomeStateEmpty));

  @override
  _HomeStateEmpty get _value => super._value as _HomeStateEmpty;
}

/// @nodoc

class _$_HomeStateEmpty implements _HomeStateEmpty {
  const _$_HomeStateEmpty();

  @override
  String toString() {
    return 'HomeState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _HomeStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Country> countries) loaded,
    required TResult Function(String error) failed,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Country> countries)? loaded,
    TResult Function(String error)? failed,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Country> countries)? loaded,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateEmpty value) empty,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(_HomeStateFailed value) failed,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeStateEmpty value)? empty,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateFailed value)? failed,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateEmpty value)? empty,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _HomeStateEmpty implements HomeState {
  const factory _HomeStateEmpty() = _$_HomeStateEmpty;
}

/// @nodoc
abstract class _$HomeStateLoadingCopyWith<$Res> {
  factory _$HomeStateLoadingCopyWith(
          _HomeStateLoading value, $Res Function(_HomeStateLoading) then) =
      __$HomeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeStateLoadingCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateLoadingCopyWith<$Res> {
  __$HomeStateLoadingCopyWithImpl(
      _HomeStateLoading _value, $Res Function(_HomeStateLoading) _then)
      : super(_value, (v) => _then(v as _HomeStateLoading));

  @override
  _HomeStateLoading get _value => super._value as _HomeStateLoading;
}

/// @nodoc

class _$_HomeStateLoading implements _HomeStateLoading {
  const _$_HomeStateLoading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _HomeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Country> countries) loaded,
    required TResult Function(String error) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Country> countries)? loaded,
    TResult Function(String error)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Country> countries)? loaded,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateEmpty value) empty,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(_HomeStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeStateEmpty value)? empty,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateEmpty value)? empty,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeStateLoading implements HomeState {
  const factory _HomeStateLoading() = _$_HomeStateLoading;
}

/// @nodoc
abstract class $HomeStateLoadedCopyWith<$Res> {
  factory $HomeStateLoadedCopyWith(
          HomeStateLoaded value, $Res Function(HomeStateLoaded) then) =
      _$HomeStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Country> countries});
}

/// @nodoc
class _$HomeStateLoadedCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateLoadedCopyWith<$Res> {
  _$HomeStateLoadedCopyWithImpl(
      HomeStateLoaded _value, $Res Function(HomeStateLoaded) _then)
      : super(_value, (v) => _then(v as HomeStateLoaded));

  @override
  HomeStateLoaded get _value => super._value as HomeStateLoaded;

  @override
  $Res call({
    Object? countries = freezed,
  }) {
    return _then(HomeStateLoaded(
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
    ));
  }
}

/// @nodoc

class _$HomeStateLoaded implements HomeStateLoaded {
  const _$HomeStateLoaded({required this.countries});

  @override
  final List<Country> countries;

  @override
  String toString() {
    return 'HomeState.loaded(countries: $countries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeStateLoaded &&
            const DeepCollectionEquality().equals(other.countries, countries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(countries));

  @JsonKey(ignore: true)
  @override
  $HomeStateLoadedCopyWith<HomeStateLoaded> get copyWith =>
      _$HomeStateLoadedCopyWithImpl<HomeStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Country> countries) loaded,
    required TResult Function(String error) failed,
  }) {
    return loaded(countries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Country> countries)? loaded,
    TResult Function(String error)? failed,
  }) {
    return loaded?.call(countries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Country> countries)? loaded,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(countries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateEmpty value) empty,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(_HomeStateFailed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeStateEmpty value)? empty,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateFailed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateEmpty value)? empty,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoaded implements HomeState {
  const factory HomeStateLoaded({required List<Country> countries}) =
      _$HomeStateLoaded;

  List<Country> get countries;
  @JsonKey(ignore: true)
  $HomeStateLoadedCopyWith<HomeStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HomeStateFailedCopyWith<$Res> {
  factory _$HomeStateFailedCopyWith(
          _HomeStateFailed value, $Res Function(_HomeStateFailed) then) =
      __$HomeStateFailedCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$HomeStateFailedCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateFailedCopyWith<$Res> {
  __$HomeStateFailedCopyWithImpl(
      _HomeStateFailed _value, $Res Function(_HomeStateFailed) _then)
      : super(_value, (v) => _then(v as _HomeStateFailed));

  @override
  _HomeStateFailed get _value => super._value as _HomeStateFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_HomeStateFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeStateFailed implements _HomeStateFailed {
  _$_HomeStateFailed({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'HomeState.failed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeStateFailed &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  _$HomeStateFailedCopyWith<_HomeStateFailed> get copyWith =>
      __$HomeStateFailedCopyWithImpl<_HomeStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Country> countries) loaded,
    required TResult Function(String error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Country> countries)? loaded,
    TResult Function(String error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Country> countries)? loaded,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateEmpty value) empty,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(_HomeStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeStateEmpty value)? empty,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateEmpty value)? empty,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _HomeStateFailed implements HomeState {
  factory _HomeStateFailed({required String error}) = _$_HomeStateFailed;

  String get error;
  @JsonKey(ignore: true)
  _$HomeStateFailedCopyWith<_HomeStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
