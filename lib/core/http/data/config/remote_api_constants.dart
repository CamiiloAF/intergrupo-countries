import '../../../environments/config_environment.dart';

abstract class RemoteApiConstants {
  static String get baseUrl => ConfigEnvironments.getApiHost();
}
