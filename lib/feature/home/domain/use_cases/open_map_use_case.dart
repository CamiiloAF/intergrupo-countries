import 'package:maps_launcher/maps_launcher.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/use_case/use_case.dart';

class OpenMapUseCase implements UseCase<Future<void>, String> {
  @override
  Future<void> call(final String country) async {
    try {
      await MapsLauncher.launchQuery(country);
    } catch (_) {
      throw Failure("We couldn't open the map");
    }
  }
}
