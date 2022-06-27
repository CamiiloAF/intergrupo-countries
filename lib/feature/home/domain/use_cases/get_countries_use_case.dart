import '../../../../core/error/exceptions.dart';
import '../../../../core/use_case/use_case.dart';
import '../entities/country.dart';
import '../repositories/home_repository_contract.dart';

class GetCountriesUseCase implements UseCase<Future<List<Country>>, void> {
  GetCountriesUseCase(this._repository);

  final HomeRepositoryContract _repository;

  @override
  Future<List<Country>> call(final _) async {
    try {
      return _repository.getCountries();
    } on ServerException catch (e) {
      throw Failure(e.message);
    }
  }
}
