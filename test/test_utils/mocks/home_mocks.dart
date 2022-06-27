import 'package:bloc_test/bloc_test.dart';
import 'package:intergrupo/feature/home/data/data_sources/home_remote_data_source.dart';
import 'package:intergrupo/feature/home/domain/repositories/home_repository_contract.dart';
import 'package:intergrupo/feature/home/domain/use_cases/get_countries_use_case.dart';
import 'package:intergrupo/feature/home/domain/use_cases/open_map_use_case.dart';
import 'package:intergrupo/feature/home/presentation/manager/home_bloc.dart';
import 'package:mocktail/mocktail.dart';

class HomeRemoteDataSourceMock extends Mock implements HomeRemoteDataSource {}

class HomeRepositoryMock extends Mock implements HomeRepositoryContract {}

class GetCountriesUseCaseMock extends Mock implements GetCountriesUseCase {}

class OpenMapUseCaseMock extends Mock implements OpenMapUseCase {}

class HomeBlocMock extends MockBloc<HomeEvent, HomeState> implements HomeBloc {}

class HomeStateFake extends Fake implements HomeState {}

class HomeEventFake extends Fake implements HomeEvent {}
