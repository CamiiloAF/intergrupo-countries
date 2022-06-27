import 'package:equatable/equatable.dart';

class Country extends Equatable {
  const Country({
    required this.countryName,
    required this.countryShortName,
    required this.countryPhoneCode,
  });

  final String countryName;
  final String countryShortName;
  final int countryPhoneCode;

  @override
  List<Object?> get props => [
        countryName,
        countryShortName,
        countryPhoneCode,
      ];
}
