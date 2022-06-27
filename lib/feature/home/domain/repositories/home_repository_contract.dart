import '../entities/country.dart';

abstract class HomeRepositoryContract {
  Future<List<Country>> getCountries();
}
