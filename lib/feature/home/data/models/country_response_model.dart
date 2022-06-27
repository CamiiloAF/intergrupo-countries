import '../../domain/entities/country.dart';

List<CountryResponseModel> countryResponseModelFromJson(
  final List<dynamic> items,
) =>
    List<CountryResponseModel>.from(
      // ignore: unnecessary_lambdas
      items.map((final x) => CountryResponseModel.fromJson(x)),
    );

class CountryResponseModel extends Country {
  const CountryResponseModel({
    required final String countryName,
    required final String countryShortName,
    required final int countryPhoneCode,
  }) : super(
          countryName: countryName,
          countryShortName: countryShortName,
          countryPhoneCode: countryPhoneCode,
        );

  factory CountryResponseModel.fromJson(final Map<String, dynamic> json) =>
      CountryResponseModel(
        countryName: json['country_name'],
        countryShortName: json['country_short_name'],
        countryPhoneCode: json['country_phone_code'],
      );
}
